local ok, colorizer = pcall(require, "colorizer")
if not ok then
	return
end

colorizer.setup({
	user_default_options = {
		rgb_fn = true,
		tailwind = "both",
	},
})
