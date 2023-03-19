local whichkey = lvim.builtin.which_key.mappings

whichkey["br"] = { name = "Search & replace" }
whichkey["brw"] = { "<CMD>SearchReplaceSingleBufferCWord<CR>", "Word" }
whichkey["brW"] = { "<CMD>SearchReplaceSingleBufferCWORD<CR>", "Big Word" }
whichkey["bre"] = { "<CMD>SearchReplaceSingleBufferCExpr<CR>", "Expression" }
whichkey["brc"] = { "<CMD>SearchReplaceSingleBufferSelections<CR>", "Choose selection" }
whichkey["brs"] = { "<CMD>SearchReplaceSingleBufferOpen<CR>", "Search" }

whichkey["brb"] = { name = "Multibuffer" }
whichkey["brbw"] = { "<CMD>SearchReplaceMultiBufferCWord<CR>", "Word" }
whichkey["brbW"] = { "<CMD>SearchReplaceMultiBufferCWORD<CR>", "Big Word" }
whichkey["brbe"] = { "<CMD>SearchReplaceMultiBufferCExpr<CR>", "Expression" }
whichkey["brbc"] = { "<CMD>SearchReplaceMultiBufferSelections<CR>", "Choose selection" }
whichkey["brbs"] = { "<CMD>SearchReplaceMultiBufferOpen<CR>", "Search" }

-- search and replace the selection
lvim.keys.visual_block_mode["<C-s>"] = "<CMD>SearchReplaceSingleBufferVisualSelection<CR>"
-- search and replace in selection
lvim.keys.visual_block_mode["/"] = "<CMD>SearchReplaceWithinVisualSelection<CR>"
-- search and replace in selection word under cursor
lvim.keys.visual_block_mode["<C-b>"] = "<CMD>SearchReplaceWithinVisualSelectionCWord<CR>"

-- show the effects of a search / replace in a live preview window
vim.o.inccommand = "split"
