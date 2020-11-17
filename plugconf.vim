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
"let g:coc_start_at_startup = v:false
"let g:coc_diagnostic_disable = 0

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup


" vim-easygrep

" context.vim
let g:context_enabled = 1
let g:context_max_height = 21


" startify ascii art :
"let g:startify_custom_header = [
            "\ '  _____     ____',
            "\ ' /      \  |  o | ',
            "\ '|        |/ ___\| ',
            "\ '|_________/     ',
            "\ '|_|_| |_|_|',
            "\ '']

" adding webdevicons to startify
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction


" vim_current_word
let g:vim_current_word#highlight_delay = 1000


