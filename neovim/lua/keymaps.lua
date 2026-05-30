-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
--

vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { noremap = true })
vim.keymap.set('n', '<leader>o', ':update<CR>:source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit!<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Neotree remaps
vim.keymap.set('n', '\\', '<CMD>Neotree toggle reveal<CR>', { desc = 'Open parent directory' })

vim.keymap.set('n', '<leader>e', function()
  local git_root = vim.fs.root(0, '.git')
  if git_root then
    require('neo-tree.command').execute {
      toggle = true,
      dir = git_root,
    }
  else
    print 'No Git root found.'
    -- Optional: fallback to the current working directory if not in a git repo
    -- require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
  end
end, { desc = 'Explorer NeoTree (Git Root)' })

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = '[M]ake [F]ormat' })
