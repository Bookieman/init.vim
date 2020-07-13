"####################################################
"############          INIT.VIM          ############
"####################################################

" Terminal color stuff
set background=dark
set t_Co=256
let g:colors_name="m4n"
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Calling various config files
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugconf.vim
source $HOME/.config/nvim/keys.vim

set nocp
filetype plugin on

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

hi TabLineFill term=bold cterm=bold ctermbg=white
syntax on
