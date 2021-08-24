set wildmenu
set wildmode=longest:full,full

" Enable syntax highlighting
syntax on

" Enables filetype detection, loads ftplugin, and loads indent
filetype plugin indent on

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Map tab-key to coc.nvim completion
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" Set elixir formatter
autocmd FileType elixir setlocal formatprg=mix\ format\ 

" File find

set path+=**
set wildmenu
set wildignore+=**//node_modules/**
set hidden

nnoremap <C-p> :Files<Cr>
