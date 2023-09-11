-- use :Copilot setup to setup the plugin!!!

-- use this table to disable/enable filetypes
vim.g.copilot_filetypes = { xml = false, markdown = false }

-- Accepting a suggestion whit <C-a> will insert the suggestion and move the cursor to the end of the line.
vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true

vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]

-- Dismiss the current suggestion. -> <C-]> -> <Plug>(copilot-dismiss)
-- Cycle to the next suggestion, if one is available. -> <M-]> -> <Plug>(copilot-next)
-- Cycle to the previous suggestion. -> <M-[> -> <Plug>(copilot-previous)
