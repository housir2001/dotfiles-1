set spelllang=en_us
nmap <leader>sc :set spell<CR>
nmap <leader>!sc :set nospell<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" ctrl-s for save
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>


noremap <leader>t :call fzf_tags#Find(expand('<cword>'))<CR>
noremap <leader>a :Rg <C-r>=expand('<cword>')<CR>
" search in buffor for word under cursor
noremap <leader>/ /<C-r>=expand('<cword>')<CR>

noremap <leader>f :FZF<CR>

" some fungitive shortings
noremap <leader>gb :Gblame<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gc :Gcommit -m

noremap <leader>b :CtrlPBuffer<CR>

" repeat the last call in pane 1
noremap <leader>re :execute "!tmux send -t 1 Up Enter" <CR>

" no clue 
noremap <leader>ra :execute "!tmux send -t 1 ~/test.sh Enter "<CR> 

" i am not sure that this is even triggered
nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>


" open issue under cursor
noremap <leader>ji :Unite issue:jira -custom-issue-jql=issuekey=<C-r>=expand('<cWORD>')<CR>
" open all stories in sprint
noremap <leader>js :Unite issue:jira -custom-issue-jql=(type=Story+OR+type=Bug)+AND+project=BCPO+AND+Sprint+in+openSprints()<CR>
" open all subtasks
noremap <leader>jst :Unite issue:jira -custom-issue-jql=parent+in+("<C-r>=expand('<cWORD>')<CR>")
" open issue in browser
noremap <leader>jio ! qutebrowser https://jira.sixt.com/browse/<C-r>=expand('<cWORD>')<CR>


inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <space>d  :<C-u>CocList diagnostics<cr>

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

"Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" calss outline for code on the right side as split
nmap <leader>tg :Vista!!<CR>

" format from top to bottom
nmap <leader>fo gg=G


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

" split vertical
map vv <C-W>v
" split horizontal
map ss <C-W>s

noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

" something with preview, i think for swagger files
nmap <unique> <leader>pr <Plug>GenerateDiagram 

nmap <leader>cold :colorscheme onehalfdark<CR>
nmap <leader>coll :colorscheme onehalflight<CR>

map <leader>gfv :vertical wincmd f<CR>



