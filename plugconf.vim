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
highlight clear SignColumn
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=DarkCyan
highlight ALEError ctermbg=DarkMagenta


" NerdTree plugin
let g:NERDTreeWinPos = "right"
let NERDTreeQuitOnOpen=1


" YouCompleteMe plugin
let g:ycm_autoclose_preview_window_after_completion = 1
highlight Pmenu ctermfg=white ctermbg=black guifg=#ffffff guibg=#000000
highlight PmenuSel ctermfg=green ctermbg=black guifg=#ffffff guibg=#000000

" vim-signature plugin
highlight SignatureMarkText guifg=black ctermfg=red

" Easymotion plugin
let g:EasyMotion_smartcase = 1

" GitGutter plugin
let g:gitgutter_enabled = 0
let g:gitgutter_map_keys = 0
highlight clear SignColumn
" colors
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4


