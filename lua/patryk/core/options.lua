local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
-- opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
-- opt.cursorline = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
-- opt.backspace = "indent,eol,start"

-- clipboard
--opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- consider '-' as part of the word
opt.iskeyword:append("-")
