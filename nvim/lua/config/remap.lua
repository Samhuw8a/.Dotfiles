vim.g.mapleader = " "
vim.keymap.set("n", "Y", "y")

-- Undo breakpoints
vim.keymap.set("i", ",", ",<C-g>u")
vim.keymap.set("i", ".", ".<C-g>u")
vim.keymap.set("i", "!", "!<C-g>u")
vim.keymap.set("i", "?", "?<C-g>u")

vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

-- Windows
vim.keymap.set("n", "<leader>h", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>wincmd l<CR>")
vim.keymap.set("n", "<leader>j", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<leader>k", "<cmd>wincmd k<CR>")

vim.keymap.set("n", "<leader>sv", "<cmd>wincmd v<CR>")
vim.keymap.set("n", "<leader>ss", "<cmd>wincmd s<CR>")

-- Tabs
vim.keymap.set("n", "bl", "<cmd>bnext<CR>")
vim.keymap.set("n", "bh", "<cmd>bprev<CR>")

-- terminal
vim.keymap.set("n", "tr", "<cmd>below vert term<CR>")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>rain", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<CR>")
vim.keymap.set("n", "<leader>cc", "NERDCommenterToggle")

-- Scripting
vim.keymap.set("n", "<leader>rp", "<cmd>! mypy --ignore-missing-imports --disallow-untyped-calls % && python3.11 %<CR>")
vim.keymap.set("n", "<leader>ru", "<cmd>! python3.11 %<CR>")
vim.keymap.set("n", "<leader>rr", "<cmd>! ruby %<CR>")
vim.keymap.set("n", "<leader>tp",
    "<cmd>! mypy --disallow-untyped-calls  --disallow-untyped-defs --disallow-incomplete-defs %<CR>")

-- Buffer formating
vim.keymap.set("n", "<leader>fm", "<cmd>LspZeroFormat<CR>")

-- Files
vim.keymap.set("n", "<leader>gf", "<cmd>GFiles<CR>")

vim.keymap.set("n", "<leader>t", "<cmd>Tagbar<CR>")
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")

-- Git
vim.keymap.set("n", "<leader>gs", "<cmd>G<CR>")
vim.keymap.set("n", "<leader>gl", "<cmd>Git commit<CR>")
vim.keymap.set("n", "<leader>gh", "<cmd>Git pushdCR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
