set spelllang=en_us
nmap <leader>sc :set spell<CR>
nmap <leader>!sc :set nospell<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

noremap <leader>t :call fzf_tags#Find(expand('<cword>'))<CR>
noremap <leader>a :Rg <C-r>=expand('<cword>')<CR>
noremap <leader>/ /<C-r>=expand('<cword>')<CR>
noremap <leader>e :vsplit <C-r>=expand('<cword>')<CR>
noremap <leader>f :FZF<CR>
noremap <leader>s :w<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gc :Gcommit -m

noremap <leader>b :CtrlPBuffer

noremap <leader>t :execute "!tmux send -t 1 'phpunit --filter " . expand("<cword>") . "' Enter" <CR> 
noremap <leader>r :execute "!tmux send -t 1 Up Enter" <CR>

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


nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" nmap <leader>tg :TagbarToggle<CR> 
nmap <leader>tg :Vista!!<CR>


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>r :NERDTreeFind<CR> 
map <leader>n :NERDTreeToggle<CR>

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy


nmap <C-]> <Plug>(fzf_tags)

nnoremap <C-p>a :Rg

nnoremap <leader>yl :let @+=expand("%") . ':' . line(".")<CR>

nmap <leader>= :vertical resize 120<CR> 

nmap <leader>cold :colorscheme onehalfdark<CR>
nmap <leader>coll :colorscheme onehalflight<CR>
