keymap = lvim.builtin.which_key.mappings

keymap["br"] = { name = "SearchReplaceSingleBuffer" }

keymap["rs"] = { "<CMD>SearchReplaceSingleBufferSelections<CR>", "SearchReplaceSingleBuffer [s]elction list" }
keymap["ro"] = { "<CMD>SearchReplaceSingleBufferOpen<CR>", "[o]pen" }
keymap["rw"] = { "<CMD>SearchReplaceSingleBufferCWord<CR>", "[w]ord" }
keymap["rW"] = { "<CMD>SearchReplaceSingleBufferCWORD<CR>", "[W]ORD" }
keymap["re"] = { "<CMD>SearchReplaceSingleBufferCExpr<CR>", "[e]xpr" }
keymap["rf"] = { "<CMD>SearchReplaceSingleBufferCFile<CR>", "[f]ile" }

keymap["rb"] = { name = "SearchReplaceMultiBuffer" }

keymap["rbs"] = { "<CMD>SearchReplaceMultiBufferSelections<CR>", "SearchReplaceMultiBuffer [s]elction list" }
keymap["rbo"] = { "<CMD>SearchReplaceMultiBufferOpen<CR>", "[o]pen" }
keymap["rbw"] = { "<CMD>SearchReplaceMultiBufferCWord<CR>", "[w]ord" }
keymap["rbW"] = { "<CMD>SearchReplaceMultiBufferCWORD<CR>", "[W]ORD" }
keymap["rbe"] = { "<CMD>SearchReplaceMultiBufferCExpr<CR>", "[e]xpr" }
keymap["rbf"] = { "<CMD>SearchReplaceMultiBufferCFile<CR>", "[f]ile" }

lvim.keys.visual_block_mode["<C-r>"] = [[<CMD>SearchReplaceSingleBufferVisualSelection<CR>]]
lvim.keys.visual_block_mode["<C-s>"] = [[<CMD>SearchReplaceWithinVisualSelection<CR>]]
lvim.keys.visual_block_mode["<C-b>"] = [[<CMD>SearchReplaceWithinVisualSelectionCWord<CR>]]

-- show the effects of a search / replace in a live preview window
vim.o.inccommand = "split"
