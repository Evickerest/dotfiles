require("config.lazy")
require('lualine').setup()
require("luasnip").config.set_config({ 
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
})

require("luasnip.loaders.from_lua").load({
	paths = "~/.config/nvim/LuaSnip/"
})
vim.cmd("colorscheme tokyonight-night")
vim.cmd("filetype plugin indent on")

vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "White" })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "White" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "White" })

-- For ", " in latex which for some reason isn't transparent
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
vim.api.nvim_set_hl(0, "texPartArgTitle", { fg = "#9ece6a" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#989898" })
-- vim.api.nvim_set_hl(0, "PreProc", { fg = "#7dcfff" })

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>p', vim.cmd.Ex)
vim.keymap.set('i', '<C-c>', '<Esc>')
vim.cmd("cabb W w")
vim.cmd("cabb Q q")

