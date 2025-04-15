local g = vim.g

g.background = "dark"
g.do_filetype_lua = 1

-- my variations to the new neovim default colorscheme
vim.cmd([[highlight Comment guifg=#fce094]]) -- comment color
vim.cmd([[highlight LineNr guifg=#2c2e33]]) -- dim line numbers
vim.cmd([[highlight EndOfBuffer guifg=#14161b]]) -- dim tilde under line number
vim.cmd([[highlight CursorLine guibg=#1c1d23]])
vim.cmd([[highlight CursorLineNr guifg=#2c2e33]]) -- brighter cursorline number
vim.cmd([[highlight MsgArea guifg=#2c2e33]]) -- dim command line/message area
vim.cmd([[highlight CopilotSuggestion guifg=#2c2e33]])
vim.cmd([[highlight WinSeparator guifg=#fce094]]) -- dim window separator
vim.cmd([[highlight TelescopeBorder guifg=#2c2e33]]) -- dim telescope border
vim.cmd([[highlight DiagnosticError guifg=#FFC0B9]]) -- error color
vim.cmd([[highlight DiagnosticWarn guifg=#FCE094]]) -- warning color
vim.cmd([[highlight DiagnosticInfo guifg=#b4f6c0]]) -- info color
vim.cmd([[highlight DiagnosticHint guifg=#A6DBFF]]) -- hint color
vim.cmd([[highlight DiagnosticVirtualTextError guifg=#4f5258]]) -- dim error color
vim.cmd([[highlight DiagnosticVirtualTextWarn guifg=#4f5258]]) -- dim warning color
vim.cmd([[highlight DiagnosticVirtualTextInfo guifg=#4f5258]]) -- dim info color
vim.cmd([[highlight DiagnosticVirtualTextHint guifg=#4f5258]]) -- dim hint color

g.python3_host_prog = "/usr/bin/python3"

-- g.python_recommended_style = 0

-- netrw cheatsheet --
-- - -> up directory
-- a -> dots yes/no
-- d -> make dir
-- D -> remove file
-- p -> preview
-- r -> reverse sort
-- R -> rename
-- s -> sort
-- % -> new file

g.netrw_liststlye = 3
g.netrw_banner = 0
g.netrw_browse_split = 0
g.netrw_winsize = 20
g.netrw_altv = 1
g.netrw_hide = 0
g.netrw_cursor = 0

-- copilot
-- g.copilot_filtypes = { '*': v:false, 'python': v:true }
g.copilot_node_command = "/usr/bin/node"
