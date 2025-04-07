return {
	cmd = { "zls" },
	root_markers = { ".git", "build.zig" },
	filetypes = { "zig" },
	settings = {
		zls = {
			enable_semnantic_tokens = true,
			enable_ast_check_diagnositics = true,
			include_at_in_builtins = true,
			warn_style = true,
			enable_autofix = true,
		},
	},
}
