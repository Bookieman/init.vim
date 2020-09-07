"####################################################
"############          INIT.VIM          ############
"####################################################

" Terminal color stuff
set background=dark
set t_Co=256
let g:colors_name="m4n"
set nocp

" Calling various config files
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugconf.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/colors.vim


filetype plugin on
filetype plugin indent on
autocmd Filetype * AnyFoldActivate
set foldlevel=99
