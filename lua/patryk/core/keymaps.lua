vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap.set("i", "jk", "<ESC>") -- (in insert mode, when press jk, act like ESC)

keymap.set("n", "<leader>nh", ":nohl<CR>") -- delete highlights after searching

keymap.set("n", "x", '"_x') -- delete char (same as x), but not putting it to register
keymap.set("n", "dd", '"_dd') -- delete line (same as dd), but not putting it to register
keymap.set("n", "ci", '"_ci')

keymap.set("n", "<leader>+", "<C-a>") -- increase number
keymap.set("n", "<leader>-", "<C-x>") -- decrease number

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally

keymap.set("n", "<leader>se", "<C-w>=") -- make splt windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
-- keymap.set("n", "<leader>h", ":wincmd h<CR>") -- go to left split window
-- keymap.set("n", "<leader>l", ":wincmd l<CR>") -- go to right split window
-- keymap.set("n", "<leader>k", ":wincmd k<CR>") -- go to up split window
-- keymap.set("n", "<leader>j", ":wincmd j<CR>") -- go to down split window
-- keymap.set("n", "<leader><Left>", ":wincmd h<CR>") -- go to left split window
-- keymap.set("n", "<leader><Right>", ":wincmd l<CR>") -- go to right split window
-- keymap.set("n", "<leader><Up>", ":wincmd k<CR>") -- go to up split window
-- keymap.set("n", "<leader><Down>", ":wincmd j<CR>") -- go to down split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab 
keymap.set("n", "<leader>l", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>h", ":tabp<CR>") -- go to prev tab 


-- plugins keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find file throughout project
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find text
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_strings<cr>") -- find current string with cursor
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- show buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- show help tags


-- undotree
keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
