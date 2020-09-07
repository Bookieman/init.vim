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
Plug 'dominikduda/vim_current_word'
Plug 'dkprice/vim-easygrep'
Plug 'Chiel92/vim-autoformat'
Plug 'mrk21/yaml-vim'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'haya14busa/incsearch.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'voldikss/vim-floaterm'
call plug#end()

" Check these out when you have time:
" https://github.com/junegunn/vim-peekaboo
