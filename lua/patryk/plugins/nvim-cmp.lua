local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end


local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end


-- vscode-like icons for autocompletion
local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
	return
end


-- load friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			luasnip.lsp_expand(args.body)
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
    -- window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
    -- },
    mapping = cmp.mapping.preset.insert({
		['<C-k>'] = cmp.mapping.select_prev_item(), -- previous suggestion
		['<C-j>'] = cmp.mapping.select_next_item(), -- next suggestion
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(), -- show complete suggestions
		['<C-e>'] = cmp.mapping.abort(), -- close completion window
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		-- { name = 'vsnip' }, -- For vsnip users.
		{ name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
    }, {
		{ name = 'buffer' }, -- text within current buffer
		{ name = 'path' }, -- file system paths
    }),
	-- formatting = {
	-- 	format lspkind.cmp_format({
	-- 		maxwidth = 50,
	-- 		ellipsis_char = "...",
	-- 	}),
	-- }),
})
  
