vim.g.smoothie_hide_cursor = 1

vim.g.smoothie_remapped_commands = {
	"<C-D>",
	"<C-U>",
	"<C-F>",
	"<S-Down>",
	"<C-B>",
	"<S-Up>",
	"z+",
	"z^",
	"zt",
	"z<CR>",
	"z.",
	"zz",
	"z-",
	"zb",
	"{",
	"}",
	"<ScrollWheelDown>",
	"<ScrollWheelUp>",
}

-- g:smoothie_speed_constant_factor: (default: 10) This value controls constant term of the velocity curve.
-- Increasing this boosts primarily cursor speed at the end of animation.
vim.g.smoothie_speed_constant_factor = 15

-- g:smoothie_speed_linear_factor: (default: 10) This value controls linear term of the velocity curve.
-- Increasing this boosts primarily cursor speed at the beginning of animation.
vim.g.smoothie_speed_linear_factor = 15
