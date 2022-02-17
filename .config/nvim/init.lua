local indent = 2

require('plugins')

-- compile plugins whenever plugins.lua is changed
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

vim.cmd [[ source ~/.config/nvim/settings.vim ]]
vim.cmd [[ colorscheme tokyonight ]]

vim.opt.tabstop = indent
vim.opt.shiftwidth = indent
vim.opt.softtabstop = indent
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.wrap = false
vim.opt.scrolloff = 6
vim.opt.showmode = false

vim.opt.mouse:append('a')
vim.opt.clipboard = 'unnamedplus'
