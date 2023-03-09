-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "adwaita"

-- lvim options
lvim.format_on_save = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.rainbow.enable = true
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
lvim.leader = "space"
lvim.keys.normal_mode["<M-v>"] = "<C-v>"
lvim.keys.insert_mode["qi"] = "<ESC>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.visual_mode["qv"] = "<ESC>"
lvim.keys.command_mode["<C-l>"] = "<Right>"
lvim.keys.command_mode["<C-h>"] = "<Left>"
lvim.keys.command_mode["<C-k>"] = "<Up>"
lvim.keys.command_mode["<C-j>"] = "<Down>"
-- whichkey
lvim.builtin.which_key.mappings["c"] = {}
lvim.builtin.which_key.mappings["h"] = {}
lvim.builtin.which_key.mappings["T"] = {}
lvim.builtin.which_key.mappings["f"] = {}
lvim.builtin.which_key.mappings["br"] = { "<CMD>luafile %<CR>", "Luafile" }
lvim.builtin.which_key.mappings["bz"] = {
	"<CMD>lua require('zen-mode').toggle({window={width=1}})<CR>",
	"Zen mode",
}
lvim.builtin.which_key.mappings["sT"] = { ":%s/", "Find and replace" }
lvim.builtin.which_key.mappings["t"] = { "", "Terminal" }
lvim.builtin.which_key.mappings["sH"] = {
	"<CMD>Telescope current_buffer_fuzzy_find<CR>",
	"Telescope here",
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
