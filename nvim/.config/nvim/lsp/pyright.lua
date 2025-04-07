return {
	cmd = { "pyright-langserver", "--stdio" },
	root_markers = { "pyproject.toml", "requirements.txt", ".git", "Pipfile", "setup.py" },
	filetypes = { "python" },
	settings = {
		python = {
			analysis = {
				autoImportCompletions = true,
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
}
