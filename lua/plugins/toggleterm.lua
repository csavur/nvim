return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require('toggleterm').setup({
			size = 20,
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
--			direction = "float", -- 'horizontal' |
			close_on_exit = true,
			shell = vim.o.shell,

		})

		vim.api.nvim_set_keymap('n', '<C-\\>', ':ToggleTerm<CR>', { })
		vim.api.nvim_set_keymap('i', '<C-\\>', ':ToggleTerm<CR>', { })

		--vim.api.nvim_set_keymap('t', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
		--vim.api.nvim_set_keymap('n', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
		--vim.api.nvim_set_keymap('n', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
		
		function _G.set_terminal_keymaps()
		  local opts = {noremap = true}
		  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
		  --vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
		  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
		  --vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-/><C-n><C-W>j]], opts)
		  --vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-/><C-n><C-W>k]], opts)
		  --vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-/><C-n><C-W>l]], opts)
		end

		vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

	end
}
