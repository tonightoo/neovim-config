vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.fenc = 'utf-8'
vim.opt.clipboard = 'unnamedplus'
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.showcmd = true
vim.opt.cursorline = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.visualbell = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest'
vim.opt.autochdir = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fileencodings = 'utf-8'
vim.opt.fileformats = { 'unix', 'dos', 'mac' }
if vim.fn.has('win64') == 1 then
    vim.opt.guifont = 'Hack Nerd Font Mono:h14'
elseif vim.fn.has('wsl') then
    vim.opt.guifont = 'Hack Nerd Font Mono:h18'
end
vim.opt.mouse = 'a'
vim.opt.winblend = 5
