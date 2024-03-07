require("config.set")
require("config.remap")
require("config.vimplug")

local fold_open = "autocmd BufWinEnter,BufRead * silent! :%foldopen!"
local py_open = "au BufNewFile,BufRead *.py set foldmethod=indent"
vim.api.nvim_command(fold_open)
vim.api.nvim_command(py_open)
