local colorscheme = 'darkblue'

colorscheme = 'tokyonight'
-- colorscheme = 'gruvbox'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

local set_default_colorscheme = function()
  vim.cmd([[ colorscheme darkblue ]])
end

if not status_ok then
  vim.notify('colorscheme ' .. colorscheme .. ' not found!')
  set_default_colorscheme()
end
vim.cmd([[ set background=dark ]])
