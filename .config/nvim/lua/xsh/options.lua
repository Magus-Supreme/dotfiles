-- no backup file
vim.opt.backup = false
-- allows neovim to access the system clipboard
vim.opt.clipboard = "unnamedplus"
-- the encoding written to a file
vim.opt.fileencoding = "utf-8"
-- highlight all matches on previous search pattern
vim.opt.hlsearch = true
-- ignore case in search patterns
vim.opt.ignorecase = true
-- no more right click menu
vim.opt.mousemodel = "extend"
-- we don't need to see things like -- INSERT -- anymore
vim.opt.showmode = false
-- make indenting smarter again
vim.opt.smartindent = true
-- force all horizontal splits to go below current window
vim.opt.splitbelow = true
-- force all vertical splits to go to the right of current window
vim.opt.splitright = true
-- no swap file
vim.opt.swapfile = false
-- set term gui colors (most terminals support this)
vim.opt.termguicolors = true
-- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = 1000
-- enable persistent undo
vim.opt.undofile = true
-- faster completion (4000ms default)
vim.opt.updatetime = 300
-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.writebackup = false
-- convert tabs to spaces
vim.opt.expandtab = true
-- the number of spaces inserted for each indentation
vim.opt.shiftwidth = 4
-- insert 2 spaces for a tab
vim.opt.tabstop = 4
-- highlight the current line
vim.opt.cursorline = true
-- relative line numbers
vim.opt.relativenumber = true
-- display lines as one long line
vim.opt.wrap = false
-- builtin explorer style
vim.g.netrw_liststyle = 3

-- quality of life aliases
local function mkalias(alias, orginal)
	vim.cmd(string.format("cnoreabbrev %s %s", alias, orginal))
end
mkalias("help", "tab help")
mkalias("h", "tab help")
mkalias("W", "w")
mkalias("Q", "q")
mkalias("Wq", "wq")
mkalias("WQ", "wq")
