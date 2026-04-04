require('claudecode').setup({
    provider = 'native',
    split_side = 'right',
    split_width_percentage = 0.35,
    diff_opts = {
        open_in_new_tab = true,
        hide_terminal_in_new_tab = false,
        layout = 'horizontal',
    },
})

vim.keymap.set('v', '<leader>cs', '<cmd>ClaudeCodeSend<cr>', { desc = 'Send selection to Claude' })
vim.keymap.set({ 'n', 't' }, '<leader>cc', '<cmd>ClaudeCodeFocus<cr>', { desc = 'Focus Claude Code' })
