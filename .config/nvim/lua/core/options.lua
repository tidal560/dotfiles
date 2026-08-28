vim.cmd("let g:netrw_liststyle=3") --Used | in file explore
vim.cmd("set number") -- Absote number of current line
vim.cmd("set relativenumber") -- Relative number of lines above and below
vim.cmd("set cursorline") -- Shows current line
vim.cmd("set colorcolumn=81") -- Prints a vertical line in column 81

-- Tabs and indentation
vim.cmd("set expandtab") -- Expand tabs to spaces
vim.cmd("set softtabstop=4") -- Tab uses 4 spaces
vim.cmd("set shiftwidth=4") -- 4 spaces for indents
vim.cmd("set autoindent") -- Copy indent from current line when starting a new line

-- Search settigs
vim.cmd("set ignorecase") -- Ignore case when searching
vim.cmd("set smartcase") -- If mixed case in searches, assumes case-sensitive

-- Term colors
vim.cmd("set termguicolors")
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

vim.opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

vim.opt.clipboard:append("unnamedplus") -- Send copied buffer to clipboard

vim.cmd("set splitright") -- Split vertical window to the right
vim.cmd("set splitbelow") -- Split horizontal window to the bottom

-- Spelling
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Highlight trailing whitespaces
vim.cmd([[
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
]])
