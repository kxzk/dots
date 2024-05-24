return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
				change = {
					hl = "GitSignsChange",
					text = "│",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn",
				},
				delete = {
					hl = "GitSignsDelete",
					text = "│",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn",
				},
				topdelete = {
					hl = "GitSignsDelete",
					text = "│",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn",
				},
				changedelete = {
					hl = "GitSignsChange",
					text = "│",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn",
				},
				untracked = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
			},
		},
	},
	{ "numToStr/Comment.nvim", opts = {}, event = "VeryLazy" },
	{ "github/copilot.vim" },
	-- fuzzy finder (files, lsp, etc)
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built.
			-- Only load if `make` is available. Make sure you have the system
			-- requirements installed.
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				-- NOTE: If you are having trouble with this installation,
				--       refer to the README for telescope-fzf-native for more instructions.
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
		opts = {
			defaults = {
				prompt_prefix = "❯❯❯ ",
				selection_caret = "❯ ",
				entry_prefix = " ",
				initial_mode = "insert",
				selection_strategy = "reset",
				sorting_strategy = "ascending",
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
						results_width = 0.8,
					},
					vertical = {
						mirror = false,
					},
				},
				file_ignore_patterns = {
					"^.git/",
					"^.cache/",
					"^__pycache__/",
					"^target/",
					"^docs/",
					"Cargo.toml",
					"Library",
					"Documents",
					"^.rustup/",
					"^.cargo/",
					"^.local/",
					"^.Trash/",
					"^pkg/",
					"%.ttf",
					"%.otf",
					"%.svg",
					"%.sqlite3",
					"%.lock",
					"%.pdf",
					"%.zip",
					"%.cache",
				},
				path_display = { "truncate" },
				winblend = 0,
				results_title = false,
				preview_title = false,
				borderchars = {
					{ "▀", "▐", "▄", "▌", "▛", "▜", "▟", "▙" },
					prompt = { "▀", "▐", "▄", "▌", "▛", "▜", "▟", "▙" },
					results = { " ", "▐", "▄", "▌", "▌", "▐", "▟", "▙" },
					preview = { "▀", "▐", "▄", "▌", "▛", "▜", "▟", "▙" },
				},
			},
		},
	},
	{
		-- highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			indent = { enable = false },
		},
	},
	{
		-- LSP Configuration & Plugins
		"neovim/nvim-lspconfig",
		dependencies = {
			-- automatically install lsps to stdpath for neovim
			{ "williamboman/mason.nvim", config = true },
			"williamboman/mason-lspconfig.nvim",
		},
	},
	{
		"laytan/tailwind-sorter.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
		build = "cd formatter && npm i && npm run build",
		config = true,
		ft = "html",
		-- 	opts = {
		-- 		on_save_enabled = true,
		-- 		on_save_pattern = { "*.html" },
		-- 	},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt", "goimports", "golines" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				python = { "isort", "black" },
				-- javascript = { "prettierd" },
				-- html = { "prettierd" },
				-- rust = { "rustfmt" },
				sql = { "sqlfmt" },
				["_"] = { "trim_whitespace" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},
}
