-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- manage lazy itself
	"folke/lazy.nvim",

	-- colorschemes
	"Mofiqul/vscode.nvim",
	{ "projekt0n/github-nvim-theme", version = "v0.0.7" },

	-- all the cmp stuff
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",

	-- lua snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",

	-- smooth scrolling for the terminal
	"opalmay/vim-smoothie",
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},
	-- nvim tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "File explorer" },
		},
	},
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},
	"p00f/nvim-ts-rainbow",
	-- autopairs
	"windwp/nvim-autopairs",
	-- dashboard
	"goolord/alpha-nvim",
	-- which-key
	"folke/which-key.nvim",
	-- highlight TODO and other help comments
	"folke/todo-comments.nvim",
	-- faster motion
	"ggandor/leap.nvim",
	-- pick up from where you left
	{
		"ethanholz/nvim-lastplace",
		event = "BufRead",
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = {
					"gitcommit",
					"gitrebase",
					"svn",
					"hgcommit",
				},
				lastplace_open_folds = true,
			})
		end,
	},
	-- eye candy for vim native ui
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
	-- deal with these "'[{( !
	{
		"tpope/vim-surround",
	},
})
