-- Open Python
vim.keymap.set('n', '<c-o>', 
	function()
		local path = vim.fn.expand('%')
		vim.cmd(":!nohup zathura " .. path .. "& exit")
	end
)
