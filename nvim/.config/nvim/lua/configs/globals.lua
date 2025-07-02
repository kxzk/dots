local g = vim.g

-- make it stop yelling
vim.deprecate = function() end

vim.cmd("colorscheme default")
vim.opt.background = "dark"
g.do_filetype_lua = 1

g.python3_host_prog = "/usr/bin/python3"

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
