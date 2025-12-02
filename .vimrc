" Set leader first
let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'

call plug#end()

" ----------------------------------------
" Basic modern Vim settings (macOS)
" ----------------------------------------
set nocompatible
syntax on
filetype plugin indent on

" ----------------------------------------
" Security
" ----------------------------------------
set modelines=0

" ----------------------------------------
" UI / Display
" ----------------------------------------
set number
set relativenumber
set ruler
set showmode
set showcmd
set visualbell
set scrolloff=3

" ----------------------------------------
" Searching
" ----------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Clear search highlight
nnoremap <leader>h :let @/=''<CR>

" Keep search results centered
nnoremap n nzzzv
nnoremap N Nzzzv

" ----------------------------------------
" Indentation / Tabs
" ----------------------------------------
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent

" ----------------------------------------
" Editing Behavior
" ----------------------------------------
set hidden
set backspace=indent,eol,start

" ----------------------------------------
" Motion / Navigation
" ----------------------------------------
" Move by display lines instead of physical lines
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" Page down/up using Ctrl-j / Ctrl-k
nnoremap J <C-f>   " Shift+j = J → page down
nnoremap K <C-b>   " Shift+k = K → page up
xnoremap J <C-f>
xnoremap K <C-b>

" Shift-U for redo
nnoremap U <C-r>

" Comment
nmap C gcc
xmap C gc

" ----------------------------------------
" Clipboard & mouse (macOS)
" ----------------------------------------
set clipboard=unnamedplus,unnamed,autoselect
set mouse=a

" ----------------------------------------
" Visualizing whitespace
" ----------------------------------------
set listchars=tab:▸\ ,eol:¬
nnoremap <leader>l :set list!<CR>

" ----------------------------------------
" Split navigation
" ----------------------------------------
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ----------------------------------------
" Auto-reload files changed outside Vim
" ----------------------------------------
set autoread
autocmd FocusGained,BufEnter * checktime

" ----------------------------------------
" Close help windows quickly
" ----------------------------------------
autocmd FileType help nnoremap q :quit<CR>

" ----------------------------------------
" Syntax folding
" --------------------------------------
set foldmethod=syntax
set foldlevelstart=99


" ----------------------------------------
" Colors
" ----------------------------------------
" set background=dark
" colorscheme default
colorscheme gruvbox
set background=dark   " optional

" ----------------------------------------
" Status bar (lightline)
" ----------------------------------------
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat' }

" ----------------------------------------
" C++ clang-format integration
" ----------------------------------------
let g:clang_format#auto_format = 1
autocmd BufWritePre *.cpp,*.hpp,*.h,*.cc,*.c ClangFormat
nnoremap <leader>cf :ClangFormat<CR>

" ----------------------------------------
" LSP / CoC keybindings
" ----------------------------------------
" Go to definition
nmap <silent> gd <Plug>(coc-definition)

" References
nmap <silent> gr <Plug>(coc-references)

" Hover documentation
nnoremap <leader>h :call CocActionAsync('doHover')<CR>
    " Darker, softer hover window
highlight CocFloating guibg=#1e1e1e guifg=#d4d4d4
highlight CocFloatingBorder guifg=#3c3c3c
highlight NormalFloat guibg=#1e1e1e
highlight Pmenu guibg=#1e1e1e guifg=#cccccc
highlight PmenuSel guibg=#3c3c3c guifg=#ffffff
"highlight! link CocFloating NormalFloat
"highlight! link CocFloatingBorder Comment

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Format manually
nmap <leader>f <Plug>(coc-format)

" Code actions
nmap <leader>a <Plug>(coc-codeaction)

" Diagnostics prev/next
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Show signature help in insert mode
autocmd CursorHoldI * silent call CocActionAsync('showSignatureHelp')

