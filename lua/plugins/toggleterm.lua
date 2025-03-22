return {
	'akinsho/toggleterm.nvim', version = "*",
	config = function()
		require('toggleterm').setup{}
		vim.api.nvim_set_keymap('n', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })

		--vim.api.nvim_set_keymap('t', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
		--vim.api.nvim_set_keymap('n', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
		--vim.api.nvim_set_keymap('n', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
	end
}
