"####################################################
"############         COLORS.VIM         ############
"####################################################



highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

hi TabLineFill term=bold cterm=bold ctermbg=white

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


"Pmenu
highlight Pmenu ctermbg=black ctermfg=white
highlight PmenuSel ctermbg=red ctermfg=black
highlight PmenuSbar ctermbg=black ctermfg=red
highlight PmenuThumb ctermbg=white ctermfg=white

