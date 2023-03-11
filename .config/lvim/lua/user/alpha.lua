local usr_plugin_count = #lvim.plugins
lvim.builtin.alpha = {
	dashboard = {
		config = {},
		section = {
			header = {
				type = "text",
				val = require("lvim.core.alpha.dashboard").banner_alt_1,
				opts = {
					position = "center",
					hl = "Label",
				},
			},
			buttons = {
				opts = {
					hl_shortcut = "Include",
					spacing = 1,
				},
				entries = {
					-- { "l", "  Manage plugins", "<CMD>Lazy<CR>" },
					-- { "m", "  Manage LSPs", "<CMD>Mason<CR>" },
					{ "p", lvim.icons.ui.Project .. "  Projects ", "<CMD>Telescope projects<CR>" },
					{ "r", lvim.icons.ui.History .. "  Recent files", "<CMD>Telescope oldfiles <CR>" },
					{
						"c",
						lvim.icons.ui.Gear .. "  Configuration",
						"<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>",
					},
					{ "q", lvim.icons.ui.Close .. "  Quit", "<CMD>quit<CR>" },
				},
			},
			footer = {
				type = "text",
				val = require("lvim.interface.text").align_center({ width = 0 }, {
					string.format(
						"There are %s plugins in total, %s are installed by user",
						44 + usr_plugin_count,
						usr_plugin_count
					),
				}, 0.5),
				opts = {
					position = "center",
					hl = "Number",
				},
			},
		},
		opts = { autostart = true },
	},
	active = true,
	mode = "dashboard",
}
