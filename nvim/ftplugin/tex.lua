-- Open Latex Document
vim.keymap.set('n', '<c-o>', 
	function()
		local path = vim.fn.expand('%:p')
		local pdf = vim.fn.substitute(path, '.tex', '.pdf', "g")
		vim.cmd(":!nohup zathura " .. pdf .. "& exit")
	end
)

vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]
