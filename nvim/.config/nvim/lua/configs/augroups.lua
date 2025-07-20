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

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en_us"
		vim.opt_local.relativenumber = true
		-- vim.opt_local.textwidth = 72
	end,
})

function CompileRunC()
	local filename = vim.fn.expand("%:t:r")
	vim.cmd(string.format("!gcc %s -o %s && ./%s", vim.fn.expand("%"), filename, filename))
end

function CompileRunCpp()
	local filename = vim.fn.expand("%:t:r")
	vim.cmd(string.format("!g++ %s -o %s && ./%s", vim.fn.expand("%"), filename, filename))
end

local autocmds = {
	_sql = {
		{ "FileType", "sql", "colorscheme retrobox" },
		{ "FileType", "sql", "set background=dark" },
		-- { "FileType", "sql", "nmap <leader>r :20 split term://duckdb < %<CR>" },
		{ "FileType", "sql", "nmap <leader>t :!sqlfmt %<CR><CR>" },
	},
	_ruby = {
		{ "FileType", "ruby", "nmap <leader>r :20 split term://ruby %<CR>" },
	},
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
	_zig = {
		{ "FileType", "zig", "nmap <leader>r :20 split term://zig run %<CR>" },
		{ "FileType", "zig", "nmap <leader>t :20 split term://zig test %<CR>" },
	},
	_templates = {
		{ "BufNewFile", "*.prd", "0r ~/.config/nvim/templates/prd.skeleton" },
		{ "BufNewFile", "*.py", "0r ~/.config/nvim/templates/py.skeleton" },
		{ "BufNewFile", "*.go", "0r ~/.config/nvim/templates/go.skeleton" },
		{ "BufNewFile", "*.todo", "0r ~/.config/nvim/templates/todo.skeleton" },
		{ "BufNewFile", "*.c", "0r ~/.config/nvim/templates/c.skeleton" },
		{ "BufNewFile", "*.cpp", "0r ~/.config/nvim/templates/cpp.skeleton" },
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
