-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
--

vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { noremap = true })
vim.keymap.set('n', '<leader>o', ':restart<CR>', { desc = 'Reload' })
vim.keymap.set('n', '<leader>w', ':write<CR>', { desc = 'Save changes' })
vim.keymap.set('n', '<leader>q', ':bd!<CR>', { desc = 'Close window' })
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'Open a new tab' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])


vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = '[M]ake [F]ormat' })
