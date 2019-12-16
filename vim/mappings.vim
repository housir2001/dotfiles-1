
nmap <leader>sc :set spell<CR> 
nmap <leader>!sc :set nospell<CR> 

nnoremap ; :
nmap <c-s> :w <CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
nmap <leader>sp :w <bar> SSave! <C-R>=$FQSN <CR><CR>
noremap <leader>T :call fzf_tags#Find(expand('<cword>'))<CR>
noremap <leader>t :call fzf_tags#Find(expand('<cword>'))<CR>
noremap <leader>a :Rg <C-r>=expand('<cword>')<CR>
noremap <leader>A :Rg <C-r>=expand('<CWORD>')<CR>

noremap <leader>f :FZF<CR>

" some fungitive shortings
noremap <leader>ge :Gblame<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gc :Gcommit<CR>
noremap <leader>gl :Gpull<CR>
noremap <leader>gh :Gpush<CR>
noremap <leader>gd :Gread<CR>

noremap <leader>gus :SignifyHunkDiff<CR>
noremap <leader>gutu :SignifyHunkUndo<CR>
noremap <leader>gutd :SignifyDiff<CR>


noremap <leader>b :CtrlPBuffer<CR>

" repeat the last call in pane 1
noremap <leader>ds :VimuxRunCommand "mvn -Dmaven.surefire.debug  -Dtest=".expand("%:t:r")." test"<CR>
noremap <leader>rs :VimuxRunCommand "mvn -Dtest=".expand("%:t:r")." test" <CR>
noremap <leader>rS :VimuxRunCommand "mvn test" <CR>
noremap <leader>mc :VimuxRunCommand "mvn clean" <CR>

noremap <leader>ra :execute "!tmux send -t 1 mvn -Dtest=" . % . " test"<CR> 

xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> K :call <SID>Show_documentation()<CR>

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

"Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" calss outline for code on the right side as split
nmap <leader>tg :CocList outline<CR>

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" format from top to bottom
nmap <leader>fo gg=G
nmap <leader>fj :%!python -m json.tool<CR>


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>r :NERDTreeFind<CR> 
map <leader>n :NERDTreeToggle<CR>

" some yanking register stuff
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" use fzf for tags result list
nmap <C-]> <Plug>(fzf_tags)

" ripgrep 
nnoremap <C-p>a :Rg

" yank filename;linenumber to register
nnoremap <leader>yl :let @+=expand("%") . ':' . line(".")<CR>
nnoremap <leader>yf :let @+=expand("%") <CR>

" split vertical
map vv <C-W>v
" split horizontal
map ss <C-W>s

noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

" something with preview, i think for swagger files
" nmap <unique> <leader>pr <Plug>GenerateDiagram 

nmap <leader>cold :colorscheme onehalfdark<CR>
nmap <leader>coll :colorscheme onehalflight<CR>

map <leader>gfv :vertical wincmd f<CR>

nmap <c-w>== :set ead=ver ea noea<CR> " set windows equal vertically (^W, =, =)
nmap <c-w>=- :set ead=hor ea noea<CR> " set windows equal horizontally (^W, =, -)


" Debbugging
map <leader>at :JDBAttach<CR>
map <leader>so :JDBStepOver<CR>
map <leader>si :JDBStepIn<CR>
map <leader>soo :JDBStepOut<C`R>
map <leader>sc :JDBContinue<CR>
map <leader>ll :JDBCommand locals<CR>
map <leader>pe :JDBCommand print <C-r>=expand('<cword>')<CR>
map <leader>de :JDBCommand dump <C-r>=expand('<cword>')<CR>
map <leader>tb :JDBToggleBreakpointOnLine<CR>


nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

 map <leader>jS :call ViewSprint() 
 map <leader>js :call SubtaskJira(expand("<cWORD>"))
 map <leader>jv :call ViewJira(expand("<cWORD>"))
 map <leader>jc :call CommentJira(expand("<cWORD>"))
 map <leader>ju :call JiraUnassign(expand("<cWORD>"))
 map <leader>ja :call JiraAssign(expand("<cWORD>"))
 map <leader>jr :call JiraReview(expand("<cWORD>"))
 map <leader>jd :call JiraDone(expand("<cWORD>"))
 map <leader>jp :call JiraProgress(expand("<cWORD>"))
 map <leader>jl :call SubtaskJira("INTS-1932")



