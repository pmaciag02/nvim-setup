local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	-- move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	finder_actions_keys = {
		open = "<CR>",
	},
	definition_action_keys = {
		edit = "<CR>",
	},
})
