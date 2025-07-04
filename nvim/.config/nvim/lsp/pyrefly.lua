return {
	cmd = { "pyrefly", "lsp" },
	filetypes = { "python" },
	settings = {
		pyrefly = {
			-- enable type checking strictness
			strictParameterNoneValue = true,
			strictListInference = true,
			strictDictionaryInference = true,
			-- import organization
			reportMissingImports = true,
			reportMissingTypeStubs = false,
			-- performance
			useLibraryCodeForTypes = true,
			autoSearchPaths = true,
		},
	},
	on_exit = function(code, _, _)
		vim.notify("Closing Pyrefly LSP exited with code: " .. code, vim.log.levels.INFO)
	end,
}
