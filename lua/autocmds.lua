local function augroup(name)
  return vim.api.nvim_create_augroup('lazyvim_' .. name, { clear = true })
end


vim.api.nvim_create_user_command('RefreshAwsCreds', function(opts)
  os.execute('~/aws_sts.sh ' .. opts.args)
end, { nargs = 1 })

vim.api.nvim_create_user_command('RefreshAwsCredsSpark', function(opts)
  os.execute('~/aws_assume_role_mfa.sh ' .. opts.args)
end, { nargs = 1 })
