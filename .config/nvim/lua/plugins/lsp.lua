return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost" },
    cmd = { "LspInfo", "LspInstall", "LspUninstall", "Mason" },
    dependencies = {
      -- Plugin(s) and UI to automatically install LSPs to stdpath
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",

      -- Install lsp autocompletions
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local map_lsp_keybinds = require("core.keymaps").map_lsp_keybinds -- Has to load keymaps before pluginslsp

      -- Override tsserver diagnostics to filter out specific messages
      local messages_to_filter = {
        "This may be converted to an async function.",
        "'_Assertion' is declared but never used.",
        "'__Assertion' is declared but never used.",
        "The signature '(data: string): string' of 'atob' is deprecated.",
        "The signature '(data: string): string' of 'btoa' is deprecated.",
      }

      local function tsserver_on_publish_diagnostics_override(_, result, ctx, config)
        local filtered_diagnostics = {}

        for _, diagnostic in ipairs(result.diagnostics) do
          local found = false
          for _, message in ipairs(messages_to_filter) do
            if diagnostic.message == message then
              found = true
              break
            end
          end
          if not found then
            table.insert(filtered_diagnostics, diagnostic)
          end
        end

        result.diagnostics = filtered_diagnostics

        vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
      end

      -- Default handlers for LSP
      local default_handlers = {
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
      }

      -- Function to run when neovim connects to a Lsp client
      ---@diagnostic disable-next-line: unused-local
      local on_attach = function(_client, buffer_number)
        -- Pass the current buffer to map lsp keybinds
        map_lsp_keybinds(buffer_number)
      end

      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP Specification.
      --  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

      -- LSP servers to install (see list here: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers )
      --  Add any additional override configuration in the following tables. Available keys are:
      --  - cmd (table): Override the default command used to start the server
      --  - filetypes (table): Override the default list of associated filetypes for the server
      --  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
      --  - settings (table): Override the default settings passed when initializing the server.
      --        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
      local servers = {
        -- LSP Servers
        rust_analyzer = {
          cargo = {
            allFeatures = true,
          },
        },
        cssls = {},
        html = {},
        prismals = {},
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              workspace = {
                checkThirdParty = false,
                -- Tells lua_ls where to find all the Lua files that you have loaded
                -- for your neovim configuration.
                library = {
                  "${3rd}/luv/library",
                  unpack(vim.api.nvim_get_runtime_file("", true)),
                },
              },
              telemetry = { enabled = false },
            },
          },
        },
        tailwindcss = {},
        tsserver = {
          settings = {
            maxTsServerMemory = 12288,
          },
          handlers = {
            ["textDocument/publishDiagnostics"] = vim.lsp.with(
              tsserver_on_publish_diagnostics_override,
              {}
            ),
          },
        },
      }

      local ensure_installed = vim.tbl_keys(vim.tbl_deep_extend("force", {}, servers))

      require("mason-tool-installer").setup({
        auto_update = true,
        run_on_start = true,
        start_delay = 3000,
        debounce_hours = 12,
        ensure_installed = ensure_installed,
      })

      -- Iterate over our servers and set them up
      for name, config in pairs(servers) do
        require("lspconfig")[name].setup({
          cmd = config.cmd,
          capabilities = capabilities,
          filetypes = config.filetypes,
          handlers = vim.tbl_deep_extend("force", {}, default_handlers, config.handlers or {}),
          on_attach = on_attach,
          settings = config.settings,
        })
      end

      -- angularls custom config
      local install_path = vim.fn.stdpath("data") .. "/mason/packages/angular-language-server/node_modules"
      local ang = install_path .. "/@angular/language-server/node_modules"

      local cmd = {
        "ngserver",
        "--stdio",
        "--tsProbeLocations",
        install_path,
        "--ngProbeLocations",
        ang,
      }

      require("lspconfig").angularls.setup({
        on_attach = on_attach,
        cmd = cmd,
        on_new_config = function(new_config)
          new_config.cmd = cmd
        end,
      })

      -- Setup mason so it can manage 3rd party LSP servers
      require("mason").setup({
        ui = {
          border = "rounded",
        },
      })

      require("mason-lspconfig").setup()

      -- Configure borderd for LspInfo ui
      require("lspconfig.ui.windows").default_options.border = "rounded"

      -- Configure diagnostics border
      vim.diagnostic.config({
        float = {
          border = "rounded",
        },
      })
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls_status_ok, null_ls = pcall(require, "null-ls")

      if not null_ls_status_ok then
        return
      end

      local formatting = null_ls.builtins.formatting
      local diagnostics = null_ls.builtins.diagnostics

      null_ls.setup({
        debug = false,
        sources = {
          formatting.prettier,
          formatting.eslint_d,
          formatting.stylua,
          diagnostics.eslint_d,
        },
      })
    end,
  },
}
