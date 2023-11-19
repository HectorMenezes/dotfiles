-- nnoremap <silent> <leader>du :DBUIToggle<CR>
-- nnoremap <silent> <leader>df :DBUIFindBuffer<CR>
-- nnoremap <silent> <leader>dr :DBUIRenameBuffer<CR>
-- nnoremap <silent> <leader>dl :DBUILastQueryInfo<CR>
-- let g:db_ui_save_location = '~/.config/db_ui'

-- Define key mappings
vim.api.nvim_set_keymap('n', '<leader>du', ':DBUIToggle<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>df', ':DBUIFindBuffer<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', ':DBUIRenameBuffer<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>dl', ':DBUILastQueryInfo<CR>', { silent = true })

-- Set the variable
vim.g.db_ui_save_location = '~/.config/db_ui'
vim.cmd('autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni')

