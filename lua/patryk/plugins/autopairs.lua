local status, autopairs = pcall(require, 'nvim-autopairs')
if not status then
	return
end


autopairs.setup({
    check_ts = true, -- enable treesitter
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})






-- If you want insert `(` after select function or method items

local cmp_autopairs_status, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_status then
	return
end


local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end


cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
