local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[_____   __                 _____            ]],
	[[___  | / /_____________   ____(_)______ ___ ]],
	[[__   |/ /_  _ \  __ \_ | / /_  /__  __ `__ \]],
	[[_  /|  / /  __/ /_/ /_ |/ /_  / _  / / / / /]],
	[[/_/ |_/  \___/\____/_____/ /_/  /_/ /_/ /_/ ]],
	[[                                            ]],
	[[                                            ]],
	[[                                            ]],
	[[                                            ]],
}
dashboard.section.buttons.val = {
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	local lazy = require("lazy").stats()
	return string.format("You have %s plugins installed, %s are currently loaded.", lazy.count, lazy.loaded, "")
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
