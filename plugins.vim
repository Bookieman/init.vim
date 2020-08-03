"####################################################
"############         PLUGINS.VIM         ###########
"####################################################

" Plugin list
call plug#begin('~/.config/nvim/pluggz')
Plug 'vim-scripts/HJKL'
Plug 'theJian/Mogao'
Plug 'chrisbra/Colorizer'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'easymotion/vim-easymotion'
Plug 'cespare/vim-toml'
Plug 'miyakogi/conoline.vim'
Plug 'vim-scripts/Tabmerge'
Plug 'flazz/vim-colorschemes'
Plug 'majutsushi/tagbar'
Plug 'kshenoy/vim-signature'
Plug 'junegunn/vim-easy-align'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'pseewald/vim-anyfold'
Plug 'plasticboy/vim-markdown'
Plug 'neoclide/coc.nvim'
Plug 'lifepillar/vim-mucomplete'
Plug 'mhinz/vim-grepper'
Plug 'dominikduda/vim_current_word'
call plug#end()
