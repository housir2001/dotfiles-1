
nmap <leader>sc :set spell<CR> 
nmap <leader>!sc :set nospell<CR> 

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


nmap <c-s> :w <CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
nmap <leader>sp :w <bar> SSave! <C-R>=$FQSN <CR><CR>
noremap <leader>T :call fzf_tags#Find(expand('<CWORD>'))<CR>
noremap <leader>t :call fzf_tags#Find(expand('<cword>'))<CR>
" ripgrep 
noremap <leader>a :Rg <C-r>=expand('<cword>') <CR>
noremap <leader>A :Rg <C-r>=expand('<CWORD>') <CR>

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


noremap <leader>b :Buffers<CR>

noremap <leader>ds :VimuxRunCommand "mvn -Dmaven.surefire.debug  -Dtest=".expand("%:t:r")." test --offline"<CR>
noremap <leader>mc :VimuxRunCommand "mvn clean" <CR>

noremap <leader>rS :call RunMvnTest()<CR>
noremap <leader>rs :call RunMvnThisTest(expand("%:t:r"))<CR>

noremap <leader>tim :call StartTimeTracking(g:ActualTicket)<CR>
noremap <leader>tims :call StopTime()<CR>

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
"Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" calss outline for code on the right side as split
nmap <leader>tg :Vista!!<CR>

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  ::CocFzfList diagnostics<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.

" format from top to bottom
nmap <leader>fo gg=G
nmap <leader>fj :%!python -m json.tool<CR>

nmap <leader>log kdggjdGdt{$dT}
nmap <leader>lig dt{$dT}

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

" yank filename;linenumber to register
nnoremap <leader>yl :let @+=expand("%") . ':' . line(".")<CR>
nnoremap <leader>yf :let @+=expand("%") <CR>
nnoremap <leader>yfn :let @+=expand("%:t") <CR>

" split vertical
map vv <C-W>v
" split horizontal
map ss <C-W>s

map tt :tabnew<CR>
map tc :tabclose<CR>

map <leader>gfv :vertical wincmd f<CR>

nmap <c-w>== :set ead=ver ea noea<CR> " set windows equal vertically (^W, =, =)
nmap <c-w>=- :set ead=hor ea noea<CR> " set windows equal horizontally (^W, =, -)

" Debbugging
map <leader>at :CocCommand java.debug.vimspector.start<CR>
map <leader>st <Plug>VimspectorStop<CR>
map <leader>so  <Plug>VimspectorStepOver<CR>
map <leader>si <Plug>VimspectorStepInto<CR>
map <leader>soo <Plug>VimspectorStepOut<CR>
map <leader>vc <Plug>VimspectorContinue<CR>
map <leader>tb <Plug>VimspectorToggleBreakpoint<CR>


nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

 map <leader>jS :call ViewSprint() <CR>
 map <leader>js :call SubtaskJira(expand("<cWORD>"))<CR>
 map <leader>jv :call ViewJira(expand("<cWORD>"))<CR>
 map <leader>jco :call CommentJira(expand("<cWORD>"))<CR>
 map <leader>je :call EditJira(expand("<cWORD>"))<CR>
 map <leader>ju :call JiraUnassign(expand("<cWORD>"))<CR>
 map <leader>ja :call JiraAssign(expand("<cWORD>"))<CR>
 map <leader>jr :call JiraReview(expand("<cWORD>"))<CR>
 map <leader>jro :call JiraOpenReview()<CR>
 map <leader>jd :call JiraDone(expand("<cWORD>"))<CR>
 map <leader>jp :call JiraProgress(expand("<cWORD>"))<CR>
 map <leader>jt :call JiraTodo(expand("<cWORD>"))<CR>
 map <leader>jl :call SubtaskJira(g:ActualTicket)<CR>
 map <leader>jm :call MineJira()<CR>
 map <leader>jn :call JiraCreateSubtask(expand("<cWORD>"))<CR>
 map <leader>jpl :call JiraPlatform()<CR>
 map <leader>jo :call JiraOpen("<cWORD>")<CR>


 map <leader>cgc :call CreateGitHubComment()<CR>
 map <leader>sgc :call SendGithubComment()<CR>

nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>

map ,ll :s/target\/classes\/META-INF/src\/main\/resources\/META-INF/g <bar> :s/\[/\[ /g <bar> :s/\]/ \]/g <bar> :s/:/:\r/g <CR>

map ,RP :Far <C-R>a <C-R>s 
map ,rp :%s/<C-R>a/<C-R>s/g
map ,1 "ayiW
map ,2 "syiW
map ,3 "qyiW
map ,p1 "ap
map ,p2 "sp
map ,p3 "qp
