"####################################################
"############         COLORS.VIM         ############
"####################################################

" folds
hi Folded ctermbg=NONE

" search 
hi Search ctermbg=NONE ctermfg=red
highlight IncSearch ctermfg=blue ctermbg=NONE

"Pmenu
"highlight Pmenu ctermbg=234 ctermfg=white
highlight Pmenu ctermbg=234 ctermfg=white
highlight PmenuSel ctermbg=red ctermfg=black
highlight PmenuSbar ctermbg=black ctermfg=red
highlight PmenuThumb ctermbg=white ctermfg=white

" Background
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" vertical & horizontal cursor
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorColumn cterm=NONE ctermbg=234 ctermfg=NONE


" tab line: where there are no labels
"hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
" tab line line not active tab
"hi TabLine ctermfg=Blue ctermbg=Yellow
" tab line: active tab
"hi TabLineSel ctermfg=Red ctermbg=Yellow

hi Title ctermfg=LightBlue ctermbg=Magenta

" ALE plugin
highlight clear SignColumn
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=DarkCyan
highlight ALEError ctermbg=DarkMagenta

" vim-signature plugin
highlight SignatureMarkText guifg=black ctermfg=red

"GitGutter plugin
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" vim-current-word
hi CurrentWordTwins gui=underline,bold cterm=underline,bold
hi CurrentWord ctermfg=magenta cterm=bold


" Startify
hi StartifyHeader ctermfg=green ctermbg=NONE

hi htmlH1 ctermfg=blue ctermbg=NONE

" Coc + lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" Shitty python tab highlight
let python_highlight_space_errors = 0



let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

hi NERDTreeFile ctermbg=NONE ctermfg=white
hi NERDTreeExecFile ctermbg=NONE ctermfg=green
hi NERDTreeNodeDelimiters ctermbg=NONE ctermfg=white

highlight VertSplit ctermfg=NONE ctermbg=NONE
highlight StatusLineNC ctermfg=NONE ctermbg=NONE
highlight pythonString ctermbg=NONE
highlight pythonFunction ctermbg=NONE

highlight tomTable ctermbg=NONE ctermfg=red
hi  plug1 ctermbg=NONE ctermfg=NONE

hi TagbarScope ctermbg=NONE ctermfg=green
