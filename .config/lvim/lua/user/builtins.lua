-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "adwaita"

-- lvim options
lvim.format_on_save = true
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.cmp.cmdline.enable = true
lvim.builtin.cmp.experimental.ghost_text = true
lvim.builtin.cmp.window = nil
lvim.builtin.terminal.execs = {
	{ vim.o.shell, "<leader>tf", "Float Terminal" },
	{ vim.o.shell, "<leader>th", "Horizontal Terminal", "horizontal", 0.3 },
	{ vim.o.shell, "<leader>tv", "Vertical Terminal", "vertical", 0.4 },
}
lvim.builtin.bufferline.options = {
	mode = "tabs",
	right_mouse_command = nil,
	left_mouse_command = nil,
	show_buffer_close_icons = false,
	show_tab_indicators = false,
}

-- (neo)vim options
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.fileencoding = "utf-8"
vim.opt.mousemodel = "extend"
vim.opt.timeoutlen = 200

-- keymappings
local keys = lvim.keys
lvim.leader = "space"
keys.normal_mode["<M-v>"] = "<C-v>"
keys.insert_mode["qi"] = "<ESC>"
keys.insert_mode["<C-l>"] = "<Right>"
keys.insert_mode["<C-h>"] = "<Left>"
keys.visual_mode["qv"] = "<ESC>"
keys.command_mode["<C-l>"] = "<Right>"
keys.command_mode["<C-h>"] = "<Left>"
keys.command_mode["<C-k>"] = "<Up>"
keys.command_mode["<C-j>"] = "<Down>"
-- whichkey
local whichkey = lvim.which_key.mappings
whichkey["c"] = {}
whichkey["T"] = {}
whichkey["f"] = {}
whichkey["bh"] = {}
whichkey["bl"] = { "<CMD>luafile %<CR>", "Luafile" }
whichkey["bz"] = {
	"<CMD>lua require('zen-mode').toggle({window={width=1}})<CR>",
	"Zen mode",
}
whichkey["sT"] = { ":%s/", "Find and replace" }
whichkey["t"] = { "", "Terminal" }
whichkey["sH"] = {
	"<CMD>Telescope current_buffer_fuzzy_find<CR>",
	"Telescope here",
}
-- autocmds
lvim.autocommands = {
	{
		"BufEnter",
		{
			pattern = { "*.md", "*.mdx", "*.tex" },
			command = "set wrap",
		},
	},
}

-- Leap.nvim
require("leap").add_default_mappings()

-- quality of life aliases
local function mkalias(alias, orginal)
	vim.cmd("cnoreabbrev " .. alias .. " " .. orginal)
end
mkalias("help", "tab help")
mkalias("h", "tab help")
mkalias("W", "w")
mkalias("Q", "q")
mkalias("Wq", "wq")
mkalias("WQ", "wq")
