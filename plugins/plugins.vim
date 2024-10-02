"####################################################
"############         PLUGINS.VIM         ###########
"####################################################

" Plugin list
call plug#begin('~/.config/nvim/pluggz')

" Misc utilities
Plug 'vim-scripts/HJKL'
Plug 'xolox/vim-misc'
Plug 'nvim-lua/plenary.nvim'

" Visual utilities
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'sindrets/diffview.nvim'
Plug 'dkprice/vim-easygrep'
Plug 'voldikss/vim-floaterm'
Plug 'mtth/scratch.vim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Code utilities
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'preservim/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'sbdchd/neoformat'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'pseewald/vim-anyfold'
Plug 'easymotion/vim-easymotion'
Plug 'kshenoy/vim-signature'
Plug 'dominikduda/vim_current_word'

" Visual plugins
Plug 'ryanoasis/vim-devicons'
Plug 'flazz/vim-colorschemes'
Plug 'scottmckendry/cyberdream.nvim'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'nyoom-engineering/oxocarbon.nvim'
call plug#end()
