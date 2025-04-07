local function create_augroups(definitions)
	for group_name, definition in pairs(definitions) do
		vim.api.nvim_command("augroup " .. group_name)
		vim.api.nvim_command("autocmd!")
		for _, def in ipairs(definition) do
			local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
			vim.api.nvim_command(command)
		end
		vim.api.nvim_command("augroup END")
	end
end

function CompileRunC()
	local filename = vim.fn.expand("%:t:r")
	vim.cmd(string.format("!gcc %s -o %s && ./%s", vim.fn.expand("%"), filename, filename))
end

function CompileRunCpp()
	local filename = vim.fn.expand("%:t:r")
	vim.cmd(string.format("!g++ %s -o %s && ./%s", vim.fn.expand("%"), filename, filename))
end

local autocmds = {
	_python = {
		{ "FileType", "python", "nmap <leader>r :20 split term://uv run %<CR>" },
	},
	_html = {
		{ "FileType", "html", "nmap <leader>ts :TailwindSort<CR>" },
	},
	_go = {
		{ "FileType", "go", "nmap <leader>r :20 split term://go run *.go<CR>" },
	},
	_rust = {
		{ "FileType", "rust", "nmap <leader>r :20 split term://cargo run<CR>" },
		{ "FileType", "rust", "nmap <leader>t :20 split term://cargo test<CR>" },
	},
	_templates = {
		{ "BufNewFile", "*.py", "0r ~/.config/nvim/templates/py.skeleton" },
		{ "BufNewFile", "*.go", "0r ~/.config/nvim/templates/go.skeleton" },
		{ "BufNewFile", "*.todo", "0r ~/.config/nvim/templates/todo.skeleton" },
	},
	_terminal = {
		{ "TermOpen", "*", "setlocal nonumber norelativenumber" },
	},
	_c = {
		{ "FileType", "c", "nmap <leader>r :lua CompileRunC()<CR>" },
	},
	_cpp = {
		{ "FileType", "cpp", "nmap <leader>r :lua CompileRunCpp()<CR>" },
	},
}

create_augroups(autocmds)
