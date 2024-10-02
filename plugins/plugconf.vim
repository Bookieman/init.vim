"####################################################
"############        PLUGCONF.VIM         ###########
"####################################################
"

" Tagbar plugin
let g:tagbar_autoclose = 1
let g:tagbar_map_showproto = 'm'

" Black settings
let g:black#settings = {
  \ 'fast': 1,
  \ 'line_length': 79
\}

" Vim-Anyfold
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
set foldlevel=99


" Markdown plugin
let g:vim_markdown_folding_disabled = 1

" ALE plugin
let g:ale_enabled = 0

" Easymotion plugin
let g:EasyMotion_smartcase = 1

" GitGutter plugin
let g:gitgutter_enabled = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_lines = 1

" colors
let g:gitgutter_override_sign_column_highlight = 0

" Coc-VIM
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" vim_current_word
let g:vim_current_word#highlight_delay = 1000
hi CurrentWord ctermbg=53
hi CurrentWordTwins ctermbg=237

" Scratch.vim
" set the filetype of the scratch window
let g:scratch_filetype = "markdown"

" NERDtree
let g:NERDTreeWinSize=30

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Quit NERDTree if it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
