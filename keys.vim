"####################################################
"############          KEYS.VIM           ###########
"####################################################

" Mapping <leader>
nnoremap <Space> <Nop>
let mapleader=" "

" leader z = set number or no number
nmap <Leader>z :set rnu!<CR>

" Unbinding fast travel keys
map { <Nop>
map } <Nop>

" Mapping shift+hjkl for fast travel
noremap K     5k
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


"####################################################
"############       PLUGINS MAPPING       ###########
"####################################################

" mapping space + , for Tagbar toggle
nnoremap <silent> <Leader>, :TagbarToggle<CR>

" Clearing search
map § :nohlsearch<cr>

" mapping super + hjkl for vim window switch
nnoremap <silent><Up> :wincmd k<CR>
nnoremap <silent><Down> :wincmd j<CR>
nnoremap <silent><Left> :wincmd h<CR>
nnoremap <silent><Right> :wincmd l<CR>

nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>l :wincmd l<CR>


"Mapping t keys for tab control
map <leader>tn :tabnew<cr>
map <leader><S-tab> :tabp<cr>
map <leader><tab> :tabn<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tw :Tabmerge right<cr>
map <leader>tl :tabmove +1<cr>
map <leader>th :tabmove -1<cr>

"Mapping w keys for window split control
map <leader>w; :vnew<cr>
map <leader>w, :new<cr>
map <leader>wt <C-w>T

" Mapping m and M keys for setting a mark and going to a mark
map M '

" map F2 to toggle spellcheck
map <F2> :set spell! spelllang=en_us<CR>
"unmap <F1>
map <F1> :set spell! spelllang=fr<CR>

" PLUGINS
" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" NERDTree plugin
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
function MyNerdToggle()
  if g:NERDTree.IsOpen()
      :NERDTreeToggle
  else
      if (expand("%:t") == '')
        :NERDTreeCWD
      else
        :NERDTreeFind
      endif
      :NERDTreeMirror
      set nonumber
  endif
endfunction
nnoremap <leader>; :call MyNerdToggle()<CR>

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


" Word frequency
function! WordFrequency() range
let all = split(join(getline(a:firstline, a:lastline)), '\A\+')
let frequencies = {}
for word in all
  let frequencies[word] = get(frequencies, word, 0) + 1
endfor
new
setlocal buftype=nofile bufhidden=hide noswapfile tabstop=20
for [key,value] in items(frequencies)
  call append('$', key."\t".value)
endfor
sort i
endfunction
command! -range=% WordFrequency <line1>,<line2>call WordFrequency()
" Sorts numbers in ascending order.
" Examples:
" [2, 3, 1, 11, 2] --> [1, 2, 2, 3, 11]
" ['2', '1', '10','-1'] --> [-1, 1, 2, 10]
function! Sorted(list)
" Make sure the list consists of numbers (and not strings)
" This also ensures that the original list is not modified
let nrs = ToNrs(a:list)
let sortedList = sort(nrs, "NaturalOrder")
echo sortedList
return sortedList
endfunction

" Comparator function for natural ordering of numbers
function! NaturalOrder(firstNr, secondNr)
if a:firstNr < a:secondNr
  return -1
elseif a:firstNr > a:secondNr
  return 1
else 
  return 0
endif
endfunction

" Coerces every element of a list to a number. Returns a new list without
" modifying the original list.
function! ToNrs(list)
let nrs = []
for elem in a:list
  let nr = 0 + elem
  call add(nrs, nr)
endfor
return nrs
endfunction

function! WordFrequency() range
" Words are separated by whitespace or punctuation characters
let wordSeparators = '[[:blank:][:punct:]]\+'
let allWords = split(join(getline(a:firstline, a:lastline)), wordSeparators)
let wordToCount = {}
for word in allWords
  let wordToCount[word] = get(wordToCount, word, 0) + 1
endfor

let countToWords = {}
for [word,cnt] in items(wordToCount)
  let words = get(countToWords,cnt,"")
  " Append this word to the other words that occur as many times in the text
  let countToWords[cnt] = words . " " . word
endfor

" Create a new buffer to show the results in
new
setlocal buftype=nofile bufhidden=hide noswapfile tabstop=20

" List of word counts in ascending order
let sortedWordCounts = Sorted(keys(countToWords))

call append("$", "count \t words")
call append("$", "--------------------------")
" Show the most frequent words first -> Descending order
for cnt in reverse(sortedWordCounts)
  let words = countToWords[cnt]
  call append("$", cnt . "\t" . words)
endfor
endfunction

command! -range=% WordFrequency <line1>,<line2>call WordFrequency()

nmap <leader>wf :WordFrequency<CR>


"FloatTerm
nnoremap <silent> <C-g> :call MyTermToggle()<CR>
tnoremap <silent> <C-g>   <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <C-n>   <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <C-b>   <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <C-v>   <C-\><C-n>:FloatermPrev<CR>

function MyTermToggle()
  if bufname() =~? "NERD_tree_."
      echo "Can't open floaterm in NERDTree!"
  else
      :FloatermToggle
  endif
endfunction

function GitDiffMaster()
  execute ":DiffviewOpen origin/master"
endfunction

function GitDiffMain()
  execute ":DiffviewOpen origin/main"
endfunction

function GitDiffHead()
  execute ":DiffviewOpen HEAD"
endfunction

" GitGutter
map <leader>gdr :DiffviewRefresh<CR>
nmap <leader>gdm :call GitDiffMaster()<CR>
nmap <leader>gdn :call GitDiffMain()<CR>
nmap <leader>gdb :call GitDiffHead()<CR>

" Coc-vim
" CocDisable
nmap <leader>xcd :CocDisable<CR>
nmap <leader>xce :CocEnable<CR>

" Coc errors & diagnostic 
nmap <leader>xn <Plug>(coc-diagnostic-next)
nmap <leader>xN <Plug>(coc-diagnostic-prev)

" GoTo code navigation.
nmap <leader>xd <Plug>(coc-definition)
nmap <leader>xtd <Plug>(coc-type-definition)
nmap <leader>xx <Plug>(coc-references)

" Coc code actions
" At cursor
nmap <leader>xac <Plug>(coc-codeaction-cursor)
" Whole buffer
nmap <leader>xas <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>xqf  <Plug>(coc-fix-current)
" Applying refactor code actions
nmap <silent> <leader>xre <Plug>(coc-codeaction-refactor)


" Coc auto formatting
map <F3> :call CocAction('format')<CR>

" Black python formatting
map <F4> <cmd>call Black()<cr>

" Formatting selected code
xmap <leader>xf  <Plug>(coc-format-selected)
nmap <leader>xf  <Plug>(coc-format-selected)

" Use xh to show documentation in preview window.
nnoremap <leader>xh :call ShowDocumentation()<CR>
" Rename symbol
nmap <leader>xrn <Plug>(coc-rename)

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

"Coc nvim
let g:UltiSnipsExpandTrigger="<Nop>"

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Scratch
nmap <silent><leader>! :ScratchPreview<CR>
nmap <silent><leader>§ :ScratchInsert<CR>

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fe <cmd> Telescope symbols<cr>


map <leader>tm :MinimapToggle<cr>

tnoremap <Esc> <C-\><C-N>
tnoremap <C-f> <C-\><C-N>
