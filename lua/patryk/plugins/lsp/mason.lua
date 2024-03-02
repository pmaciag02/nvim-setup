local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end


local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end


-- local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
-- if not mason_null_ls_status then
-- 	return
-- end



mason.setup()


mason_lspconfig.setup({
	ensure_installed = {
		"clangd", -- C/C++
		"jdtls", -- Java
		"pyright", -- Python
		"rust_analyzer", -- Rust
		"tsserver", -- JavaScript
		"omnisharp", -- C#
		-- "sqlls", -- SQL
		"html", -- HTML
		"cssls", -- CSS
		"tsserver", -- TypeScript
		-- "jsonls", -- JSON
		"ltex", -- LaTeX
		"bashls", -- Bash
		"lua_ls", -- Lua
		"yamlls", -- YAML
	}
})


-- formatters & linters
-- mason_null_ls.setup({
-- 	ensure_installed = {
-- 		"prettier",
-- 		"stylua",
-- 		"eslint_d", -- TypeScript/JavaScript
-- 	}
-- })
