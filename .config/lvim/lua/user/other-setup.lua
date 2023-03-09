-- lua
local formatters = require("lvim.lsp.null-ls.formatters")
local lsp_manager = require("lvim.lsp.manager")
formatters.setup({
	{ command = "stylua", filetypes = { "lua" } },
})

formatters.setup({
	{ command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
})

vim.filetype.add({
	extension = {
		zsh = "zsh",
	},
})
lsp_manager.setup("bashls", {
	filetypes = { "sh", "zsh" },
	on_init = require("lvim.lsp").common_on_init,
	capabilities = require("lvim.lsp").common_capabilities(),
})

-- Markdown
formatters.setup({
	{ command = "prettier", filetypes = { "markdown" } },
})
