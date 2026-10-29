" --------------------------------------------------------------
"  MINIMAL SETTINGS (the 10 lines you asked about)
" --------------------------------------------------------------
set nocompatible                     " use real Vim, not old‑vi mode
filetype off                         " keep it off while we load plugins

" --- the 10 lines you gave -------------------------------------------------
syntax on
filetype plugin indent on
set number relativenumber ruler showmode showcmd
set encoding=utf-8
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set hlsearch incsearch ignorecase smartcase
nnoremap / /\v
" -------------------------------------------------------------------------

" --------------------------------------------------------------
"  THE REST OF YOUR ORIGINAL CONFIGURATION (unchanged)
" --------------------------------------------------------------

" System wide <Caps-Lock> to <Esc> remap
" Windows - PowerToys, Keyboard Manager

" List your plugins here
call plug#begin()
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Whitespace …
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab
set noshiftround

" Cursor motion …
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macros/matchit.vim

" (… the rest of your file stays exactly as you wrote it …)
