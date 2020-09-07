"####################################################
"############         GENERAL.VIM         ###########
"####################################################

" Highlights
hi Search cterm=NONE ctermfg=white ctermbg=darkgreen
set hls is
" Tabs bar highlights


" Indentation
set tabstop=4| " tabs are 4 spaces
set shiftwidth=4| " tabs are 4 space with >>
set expandtab| " on pressing 'tab', insert 4 spaces

" Search
set ignorecase| " case-insensitive search
set smartcase

" Tabs
set showtabline=2

" Left side number
set number

" Enable word wrap
set linebreak

" enable mouse click
set mouse=a

"use system clipboard
set clipboard=unnamedplus

" instead of default 4000ms (4sec)
set updatetime=400


" show line & column
set cursorline
set cursorcolumn

" Warning when opening huge files:
augroup bigfiles
   " Clear the bigfiles group in case defined elsewhere
   autocmd!
   " Set autocommand to run before reading buffer
   autocmd BufReadCmd * silent call PromptFileEdit()
augroup end



" Prompt user input if editing an existing file before reading
function! PromptFileEdit()
    " Current file
    let file = expand("%")
    " Whether or not we should continue to open the file
    let continue = 1

    " Skip if file has an extension or is not readable
    if filereadable(file) && (IsNonAsciiFile(file) || IsBlacklistedFile())
        " Get response from user
        let response = input('Are you sure you want to open "' . file . '"? [y/n]')

        " Bail if response is a 'n' or contains a 'q'
        if response ==? "n" || response =~ "q"
            let continue = 0
            if (winnr("$") == 1)
                " Quit if it was the only buffer open
                quit
            else
                " Close buffer if other buffers open
                bdelete
            endif
        endif
    endif

    if continue == 1
        " Edit the file
        execute "e" file
        " Run the remaining autocommands for the file
        execute "doautocmd BufReadPost" file
    endif

endfunction

" Return 1 if file is a non-ascii file, otherwise 0
function! IsNonAsciiFile(file)
    let ret = 1
    let fileResult = system('file ' . a:file)
    " Check if file contains ascii or is empty
    if fileResult =~ "ASCII" || fileResult =~ "empty" || fileResult =~ "UTF"
        let ret = 0
    endif
    return ret
endfunction

" Return 1 if file is blacklisted, otherwise 0
function! IsBlacklistedFile()
    let ret = 0
    let extension = expand('%:e')

    " List contains ASCII files that we don't want to open by accident
    let blacklistExtensions = ['csv', 'tsv']

    " Check if we even have an extension
    if strlen(extension) == 0
        let ret = 0
    " Check if our extension is in the blacklisted extensions
    elseif index(blacklistExtensions, extension) >= 0
        let ret = 1
    endif

    return ret
endfunction
