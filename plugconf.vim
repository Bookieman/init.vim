"####################################################
"############        PLUGCONF.VIM         ###########
"####################################################

" Tagbar plugin
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_map_showproto = 'm'

" lightline plugin
let g:lightline = {'colorscheme': 'powerlineish'}


" Markdown plugin
let g:vim_markdown_folding_disabled = 1

" ALE plugin
let g:ale_enabled = 0

" NerdTree plugin
let g:NERDTreeWinPos = "right"
let NERDTreeQuitOnOpen=1

" Easymotion plugin
let g:EasyMotion_smartcase = 1

" GitGutter plugin
let g:gitgutter_enabled = 0
let g:gitgutter_map_keys = 0

" colors
let g:gitgutter_override_sign_column_highlight = 0

" mucomplete
set completeopt+=menuone

" Coc-VIM
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

