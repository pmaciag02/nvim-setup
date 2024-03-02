-- vim.cmd("colorscheme nightfly")

local status, _ = pcall(vim.cmd, "colorscheme nightfly") -- protective call, safly handle case when colorscheme nightfly is not installed
if not status then
	print("Colorscheme not found!")
	return
end
