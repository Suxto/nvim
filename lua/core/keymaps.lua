vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- I ---------- ---
keymap.set("i", "jk", "<ESC>")

-- Better Save
keymap.set("i", "<C-s>", "<cmd>w<CR>", opts)

-- Format
-- keymap.set("i", "<C-A-l>", "<cmd>lua vim.lsp.buf.format();print('Formatted')<CR>", opts)
keymap.set('i', '<C-A-L>', function()vim.lsp.buf.format { async = true }end, opts)


-- Run Code
keymap.set("i", "<C-A-n>", "<cmd>NeoRunner<CR>", opts)
keymap.set("n", "<C-A-n>", "<cmd>NeoRunner<CR>", opts)


-- Delete line
keymap.set("i", "", "<cmd>d<CR>", opts)

-- Undo
keymap.set("i", "<C-z>", "<cmd>u<CR>", opts)

-- Comment
-- keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap.set("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
keymap.set("i", "", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR><esc>ji", opts)

-- ---------- V ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- ---------- N ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")




-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
