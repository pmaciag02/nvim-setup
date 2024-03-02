local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation, disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1


-- change COLOR OF catalog arrows
-- vim.cmd([[highlight NvimTreeIndentMarker guifg=#3FC5FF]])



-- empty setup using defaults
-- nvimtree.setup()


-- OR setup with some options
nvimtree.setup({
	-- sort_by = "case_sensitive",
	-- view = {
	-- 	width = 30,
	-- },
	-- renderer = {
	-- 	group_empty = true,
	-- },
	-- filters = {
	-- 	dotfiles = true,
	-- },

	-- file explorert and window splits work properly
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
