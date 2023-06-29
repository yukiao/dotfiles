vim.opt.termguicolors = true

local bufferline_status, bufferline = pcall(require, "bufferline")

if not bufferline_status then
	return
end

local keymap = vim.keymap

keymap.set("n", "<Tab>", ":bn<CR>") -- Go to next buffer
keymap.set("n", "<S-Tab>", ":bp<CR>") -- Go to prev buffer
keymap.set("n", "<leader>tx", ":bd<CR>") -- Close current buffer

bufferline.setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "center",
			},
		},
	},
})
