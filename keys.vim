"####################################################
"############          KEYS.VIM           ###########
"####################################################

" Mapping <leader>
nnoremap <Space> <Nop>
let mapleader=" "


nmap <Leader>z :set rnu!<CR>

" Unmapping arrows
nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>

" Unbinding fast travel keys
map $ <Nop>
map ^ <Nop>
map { <Nop>
map } <Nop>

" Mapping shift+hjkl for fast travel
noremap K	  5k
noremap J     5j
noremap H     b
noremap L     e
noremap <C-x> :bp<Bar>bd #<Cr>

" Mapping ctrl+hjkl for end of line
noremap <C-l> $
noremap <C-h> ^
noremap <C-k> 20k
noremap <C-j> 20j

" Mapping 'jj' for ESC
inoremap jj <ESC>l
inoremap JJ <ESC>l

" Mapping ctrl+backspace to delete word
imap <M-BS> <C-W>
map <M-BS> db<del>
cmap <M-BS> db<del>
cmap <M-BS> <C-W>

" Mapping <super>yy to 'yank without newline'
map <leader>yy <C-h>y<C-l>
map <leader>dd <C-h>d<C-l>

"###############PLUGINS MAPPINGS#############

" mapping space + , for Tagbar toggle
nnoremap <silent> <Leader>, :TagbarToggle<CR>

" mapping F7 for Rainbow
nnoremap <silent> <F5> :RainbowToggle<CR>

" Clearing search
map § :nohlsearch<cr>

" mapping ALT + hjkl for vim window switch
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

" mapping super + shift + hjkl for vim window move
map <silent> <leader>L <C-w>L
map <silent> <leader>K <C-w>K
map <silent> <leader>H <C-w>H
map <silent> <leader>J <C-w>J

"Mapping t keys for tab control
map <leader>tn :tabnew<cr>
map <leader>² :tabp<cr>
map <leader><tab> :tabn<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tw :Tabmerge right<cr>
map <leader>tl :tabmove +1<cr>
map <leader>th :tabmove -1<cr>

"Mapping w keys for window split control
map <leader>wv :vsplit<cr>
map <leader>wh :hsplit<cr>
map <leader>wt <C-w>T

" Mapping m and M keys for setting a mark and going to a mark
map M '

" map <super>sc to toggle spellcheck
map <F2> :set spell! spelllang=en_us<CR>



" PLUGINS
" Colorizer plugin
map <silent><F6> :ColorToggle<CR>

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" NerdTree plugin
map <Leader>; :NERDTreeToggle %<CR>

" ALE plugin
map <F3> :ALEToggle<CR>

" gitgutter visual 
map <F4> :GitGutterToggle<CR>


" When deleting mark, writing to shada file
map m<space> m*:wshada!<CR>

let g:SignatureMap = {
\ 'Leader'             :  "m",
\ 'PlaceNextMark'      :  "m.",
\ 'ToggleMarkAtLine'   :  "m,",
\ 'PurgeMarksAtLine'   :  "m-",
\ 'DeleteMark'         :  "dm",
\ 'PurgeMarks'         :  "m*",
\ 'PurgeMarkers'       :  "m<BS>",
\ 'GotoNextLineAlpha'  :  "']",
\ 'GotoPrevLineAlpha'  :  "'[",
\ 'GotoNextSpotAlpha'  :  "`]",
\ 'GotoPrevSpotAlpha'  :  "`[",
\ 'GotoNextLineByPos'  :  "]'",
\ 'GotoPrevLineByPos'  :  "['",
\ 'GotoNextSpotByPos'  :  "]`",
\ 'GotoPrevSpotByPos'  :  "[`",
\ 'GotoNextMarker'     :  "]-",
\ 'GotoPrevMarker'     :  "[-",
\ 'GotoNextMarkerAny'  :  "]=",
\ 'GotoPrevMarkerAny'  :  "[=",
\ 'ListBufferMarks'    :  "m/",
\ 'ListBufferMarkers'  :  "m?"
\ }

" CtrlP plugin
" remove ctrl+o and bind it to 'open in new tab'
let g:ctrlp_prompt_mappings = {
    \ 'OpenMulti()':          [''],
    \ 'AcceptSelection("t")': ['<c-o>'],
    \ }

" vim-easy-align plugin
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Easymotion plugin
map <leader>s <leader><leader>s

" Show syntax highlighting groups for word under cursor
nmap <C-s> :call <SID>SynStack()<CR>

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfun


" Coc-vim
"Coc errors & diagnostic 
nmap <leader>xn <Plug>(coc-diagnostic-next)
nmap <leader>xN <Plug>(coc-diagnostic-prev)

" GoTo code navigation.
nmap <leader>xd <Plug>(coc-definition)
nmap <leader>xtd <Plug>(coc-type-definition)
nmap <leader>xi <Plug>(coc-implementation)
nmap <leader>xx <Plug>(coc-references)


" Use xh to show documentation in preview window.
nnoremap <leader>xh :call <SID>show_documentation()<CR>
" Rename symbol
nmap <leader>xrn <Plug>(coc-rename)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
