local status_ok, noice = pcall(require, "noice")
if not status_ok then
	return
end

noice.setup({
	lsp = {
		-- override markdown rendering
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
		},
		progress = {
			enabled = false,
		},
		hover = {
			enabled = false,
		},
		signature = {
			enabled = false,
		},
	},
	cmdline = {
		format = {
			help = { pattern = "^:%s*tab he?l?p?%s+", icon = "" },
		},
	},
	-- you can enable a preset for easier configuration
	presets = {
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
	},
})
