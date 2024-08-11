syntax on
set relativenumber
set laststatus=2
set wildmenu
set wildmode=full:lastused
set breakindent
set nohlsearch
set nocursorline
set conceallevel=0
set pumheight=0
set scrolloff=8
set expandtab
set shiftwidth=4
set smartindent
set autoindent

set background=dark
set termguicolors
let g:gruvbox_transparent_bg=1
let g:gruvbox_italicize_comments=0
let g:gruvbox_italicize_strings=0
let g:gruvbox_italic=0
colorscheme gruvbox
hi Normal guibg=NONE

let g:fzf_action = {
	\ 'enter': 'tab split',
	\ 'ctrl-x': 'split',
	\ 'ctrl-v': 'vsplit' }

"  Map out leader key and disable default keys
let mapleader = " "
nnoremap <space> <nop>
nmap Q <nop>
nmap ! :!

"  Control windows and open term in new tab
map <leader>w <C-w>
map <leader>t <cmd>term<CR>
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

"  Move selected up and down
vmap J <cmd>m '>+1<CR>gv=gv
vmap K <cmd>m '<-2<CR>gv=gv

"  Center screen after moving up and down
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz

"  Center Screen after searching
nmap n nzzzv
nmap N Nzzzv
  
"  Go to other buffer
nmap <leader>, <cmd>e #<CR>

" Tabs
nmap <tab>l <cmd>tabnext<CR>
nmap <tab>h <cmd>tabprevious<CR>
nmap <tab>n <cmd>tab split<CR>
nmap <tab>o <cmd>tabonly<CR>

" Fzf finder
nmap <leader>sf <cmd>FZF<CR>

"  
"  -- LSP
"  vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "Restart" })
"  vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "Info" })
"  vim.keymap.set("n", "<leader>ls", "<cmd>LspStart<CR>", { desc = "Start" })
"  vim.keymap.set("n", "<leader>ll", "<cmd>LspLog<CR>", { desc = "Log" })
"  vim.keymap.set("n", "<leader>lS", "<cmd>LspStop<CR>", { desc = "Stop" })
"  vim.keymap.set("n", "<leader>lI", "<cmd>LspInstall<CR>", { desc = "Install" })
"  vim.keymap.set("n", "<leader>lu", "<cmd>LspUninstall<CR>", { desc = "Uninstall" })
