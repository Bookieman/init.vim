"####################################################
"############         GENERAL.VIM         ###########
"####################################################

set termguicolors
set laststatus=3
set splitright
set splitbelow

" Sets encoding
set encoding=UTF-8
" Associates a filetype with compatible plugins and indent types
filetype plugin indent on

" Disable legacy vi keybindings
set nocp

" Turns on syntax highlighting
syntax on

" Cursor following
set scrolloff=10

" Activate all searches highlight
set hls

" Indentation
set tabstop=4| " tabs are 4 spaces
set shiftwidth=4| " tabs are 4 space with >>
set expandtab| " on pressing 'tab', insert 4 spaces

" Search
set ignorecase| " case-insensitive search
set smartcase| " When there's an uppercase, becomes case-sensitive

" Tabs
set showtabline=2

" Left side number
set number

" Enable word wrap
set linebreak

" enable mouse click
set mouse=a

"use system clipboard
set clipboard=unnamedplus

" instead of default 4000ms (4sec)
set updatetime=400

" show line & column
set cursorline
"set cursorcolumn

let g:python3_host_prog = $HOME . '/.local/venv/nvim/bin/python'

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set number
    autocmd WinLeave * set nonumber
  augroup END
