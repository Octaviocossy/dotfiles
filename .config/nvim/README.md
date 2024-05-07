# Dependencies
**_Neovim:_** `npm install neovim` <br/>
**_Eslint:_** `npm install -g eslint_d` <br/>
**_Prettier:_** `npm install -g prettier` <br/>
**_Stylua:_** `brew install -g stylua` <br/>
**_ripgrep:_** `brew install ripgrep` <br/>

## WSL dependencies:

**_GCC:_** `sudo apt install build-essential`

# Packages

- [Lazy](https://github.com/folke/lazy.nvim) - A modern plugin manager.
- [Catppuccin](https://github.com/catppuccin/nvim) -  Soothing pastel theme.
- [Oil](https://github.com/stevearc/oil.nvim) -  File explorer.
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) -  Find, Filter, Preview, Pick. All lua, all the time.
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers.
- [lualine](https://github.com/nvim-lualine/lualine.nvim) - Statusline plugin written in lua.
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - A parser generator tool and an incremental parsing library.
- [lsp-config](https://github.com/neovim/nvim-lspconfig) - Quickstart configs for Nvim LSP.
- [cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin coded in Lua.
- [copilot](https://github.com/zbirenbaum/copilot.lua) - Pure lua replacement for [github/copilot.vim](https://github.com/github/copilot.vim).
- [copilot-cmp](https://github.com/zbirenbaum/copilot-cmp) -  Turn github copilot into a cmp source.
- [ident-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides for Neovim.
- [spectre](https://github.com/nvim-pack/nvim-spectre) - Find and replace.
- [tmux-navigator](https://github.com/alexghergh/nvim-tmux-navigation) - Easy Neovim-Tmux navigation, completely written in Lua.
- [symbols-outline](https://github.com/simrat39/symbols-outline.nvim) - A tree like view for symbols in Neovim.
- [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) -  Make Neovim's fold look modern and keep high performance.
- [dressing](https://github.com/stevearc/dressing.nvim) -  Improve the default vim.ui interfaces.
- [tsc](https://github.com/dmmulroy/tsc.nvim) - Seamless, asynchronous project-wide TypeScript type-checking.
- [vim-illuminate](https://github.com/RRethy/vim-illuminate) - Automatically highlighting other uses of the word under the cursor.
- [wilder](https://github.com/gelguy/wilder.nvim) - A more adventurous wildmenu.
- [mini-ident-scope](https://github.com/echasnovski/mini.indentscope) - Plugin to visualize and operate on indent scope.
- [comment](https://github.com/numToStr/Comment.nvim) -  Smart and powerful comment plugin for neovim.
- [noice](https://github.com/folke/noice.nvim) - Replaces the UI for messages, cmdline and the popupmenu.
- [diffview](https://github.com/sindrets/diffview.nvim) - Single tabpage interface for easily cycling through diffs.
- [bufferline](https://github.com/akinsho/bufferline.nvim) - A snazzy bufferline for Neovim.
- [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim) - Inject LSP diagnostics.
- [navic](https://github.com/SmiteshP/nvim-navic) - Statusline plugin that shows your current code context.

# Keymaps

| Keymap         | Description                                           |
| -------------- | ----------------------------------------------------- |
| `<space>w`     | Save file.                                            |
| `<space>q`<br> | Quit file.                                            |
| `<space>e`     | Open Oil.                                             |
| `<space>sf`    | Search files (Telescope).<br>                         |
| `<space>sg`    | Search file by grep (Telescope).                      |
| `<space>/`     | Search worlds in current buffer (Telescope).          |
| `<space>rn`    | Rename in current buffer (LSP).                       |
| `<space>ca`    | Code actions (LSP).                                   |
| `gd`           | Go to definition (LSP).                               |
| `gr`           | Go to reference (LSP).                                |
| `gi`           | Go to implementation (LSP),                           |
| `<space>bs`    | Show buffer symbols (LSP),                            |
| `<space>ps`    | Show project symbols (LSP),                           |
| `K`            | Hover document (LSP).                                 |
| `<space>k`     | Signature Documentation (LSP).                        |
| `gD`           | Go to declaration (LSP).                              |
| `td`           | Type definition (LSP).                                |
| `<space>S`     | Global find/replace.                                  |
| `<space>sw`    | Global find/replace for the word under the cursor.    |
| `<space>h`     | Screen horizontal split.                              |
| `<space>v`     | Screen vertical split.                                |
| `<space>f`     | Format document.                                      |
| `]d`           | Go to next diagnostic.                                |
| `d]`           | Go to previous diagnostic.                            |
| `<space>d`     | Open the diagnostic under the cursor in flaot window. |
| `zR`           | Open all folds.                                       |
| `zM`           | Close all folds.                                      |
| `<space>gs`    | Open DiffView.                                        |
| `<space>no`    | Turn off highlighted results.                         |
| `te`           | Create new tab.                                       |
| `tc`           | Close current tab.                                    |
| `tn`           | Go to next tab.                                       |
| `tp`           | Go to previous tab.                                   |

# Scaffolding
```
├── README.md
├── init.lua
└── lua
    ├── core
    │   ├── editor_config.lua
    │   ├── init.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   ├── options.lua
    │   ├── user_commands.lua
    │   └── utils.lua
    └── plugins
        ├── bufferline.lua
        ├── cmp.lua
        ├── color_scheme.lua
        ├── comment.lua
        ├── copilot.lua
        ├── diffview.lua
        ├── dressing.lua
        ├── gitsigns.lua
        ├── ident_blankline.lua
        ├── lsp.lua
        ├── lualine.lua
        ├── mini_indentscope.lua
        ├── navic.lua
        ├── noice.lua
        ├── nvim_notify.lua
        ├── oil.lua
        ├── spectre.lua
        ├── symbols_outline.lua
        ├── telescope.lua
        ├── tmux_navigator.lua
        ├── treesitter.lua
        ├── tsc.lua
        ├── ufo.lua
        ├── vim_illuminate.lua
        └── wilder.lua
```
