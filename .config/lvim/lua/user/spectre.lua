local status_ok, spectre = pcall(require, "spectre")
if not status_ok then
	return
end

-- search in current buffer's cwd
lvim.builtin.which_key.mappings["st"] = {
	function()
		spectre.open({
			cwd = string.match(vim.api.nvim_buf_get_name(0), "(.*/).*"),
		})
	end,
	"Text in dir",
}

-- search for files in buffer's cwd
lvim.builtin.which_key.mappings["sf"] = {
	function()
		spectre.open_file_search({
			cwd = string.match(vim.api.nvim_buf_get_name(0), "(.*/).*"),
		})
	end,
	"File here",
}

-- search files in the directory that you open lvim
lvim.builtin.which_key.mappings["sF"] = {
	function()
		spectre.open_file_search({
			cwd = vim.loop.cwd(),
		})
	end,
	"File",
}
require("spectre").setup({
	line_sep_start = "┌─────────────────────────────────────────",
	result_padding = "│  ",
	line_sep = "└─────────────────────────────────────────",
	find_engine = {
		-- turn on color highlights
		["rg"] = {
			args = {
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
			},
		},
	},
	mapping = {
		["send_to_qf"] = {
			map = "<leader>Q",
		},
	},
	-- insert mode on open
	is_insert_mode = true,
})
