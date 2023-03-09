lvim.plugins = {
	-- Smooth scroll for the terminal
	"opalmay/vim-smoothie",
	-- hl common comments
	"folke/todo-comments.nvim",
	-- lsp signature hints
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
	-- interactive buffer repl
	{
		"metakirby5/codi.vim",
		cmd = "Codi",
		lazy = true,
	},
	-- faster motion
	"ggandor/leap.nvim",
	"nvim-lua/plenary.nvim",
	-- better find-and-replace
	"windwp/nvim-spectre",
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
	-- rainbow brackets
	"p00f/nvim-ts-rainbow",
	-- eye candy for vim native ui
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
	-- deal with these "'[{( !
	"tpope/vim-surround",
	-- zen mode
	"folke/zen-mode.nvim",
	-- color highlights
	"NvChad/nvim-colorizer.lua",
	-- plugin manager gui
	{
		"xiaoshihou514/marketplace.nvim",
		config = function()
			require("marketplace").setup({
				curl = "curl --insecure -s ",
				readme_action = function(markdown)
					local m = string.gsub(markdown, '"', '\\"')
					local command = 'echo "' .. m .. '" | mdcat'
					local handle = io.popen(command)
					if handle == nil then
						return markdown
					end
					local result = handle:read("*a")
					handle:close()
					return result
				end,
			})
		end,
	},

	-- colorschemes
	"EdenEast/nightfox.nvim",
	"navarasu/onedark.nvim",
	"Mofiqul/dracula.nvim",
	"glepnir/zephyr-nvim",
	"sts10/vim-pink-moon",
	"Mofiqul/adwaita.nvim",
	"lunarvim/Onedarker.nvim",
	"NTBBloodbath/doom-one.nvim",
	"ishan9299/nvim-solarized-lua",
	"sainnhe/everforest",
	"marko-cerovac/material.nvim",
	{ "projekt0n/github-nvim-theme", version = "v0.0.7" },

	-- rust setup
	{ "simrat39/rust-tools.nvim", ft = "rust" },
	{
		"saecki/crates.nvim",
		version = "v0.3.0",
		config = function()
			require("crates").setup({
				null_ls = {
					enabled = true,
					name = "crates.nvim",
				},
			})
		end,
		ft = "rust",
	},
	{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup()
		end,
	},

	-- python setup
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
	},
	{
		-- You can generate docstrings automatically.
		"danymat/neogen",
		config = function()
			require("neogen").setup({
				enabled = true,
				languages = {
					python = {
						template = {
							annotation_convention = "numpydoc",
						},
					},
				},
			})
		end,
		ft = "python",
	},
	-- To run blocks of code like jupyter notebook.
	-- { "dccsillag/magma-nvim", run = ":UpdateRemotePlugins" },
	-- To switch between vritual environmnts.
	-- "AckslD/swenv.nvim",

	-- c setup
	{
		"p00f/clangd_extensions.nvim",
		ft = "c",
	},
}

lvim.builtin.treesitter.ensure_installed = {
	"lua",
	"rust",
	"toml",
	"python",
	"cpp",
	"c",
	"astro",
	"bash",
	"markdown",
	"markdown_inline",
	"regex",
	"ruby",
	"vim",
	"git_rebase",
	"gitcommit",
}
