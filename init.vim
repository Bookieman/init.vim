"####################################################
"############          INIT.VIM          ############
"####################################################

" Calling various config files
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/plugconf.vim
source $HOME/.config/nvim/keys.vim

set background=dark
set termguicolors
colorscheme oxocarbon

let g:gruvbox_material_sign_column_background = 'none'
