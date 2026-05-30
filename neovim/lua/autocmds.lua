vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 200 }
  end,
})

vim.api.nvim_create_user_command('RefreshAwsCreds', function(opts)
  os.execute('~/aws_sts.sh ' .. opts.args)
end, { nargs = 1 })

vim.api.nvim_create_user_command('RefreshAwsCredsSpark', function(opts)
  os.execute('~/aws_assume_role_mfa.sh ' .. opts.args)
end, { nargs = 1 })
