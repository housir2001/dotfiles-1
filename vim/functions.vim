function! Show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction


function! ViewSprint() 
    let tmpWord=expand('<cWORD>')
    :normal ggdG
    :read ! jira listStories 
endfunction


function! SubtaskJira(word)
    :normal ggdG
    :execute ':normal! i Parent Story ' . a:word
    :execute "read ! jira listSubtasks " . substitute(a:word, ":", "", "")
endfunction


function! EditJira(word)
    :execute "ter jira edit " . a:word  
endfunction

function! CommentJira(word)
    :execute "ter jira comment " . a:word  
endfunction

function! JiraDone(word) 
    :execute "ter jira transition \"Done\" --noedit  " . a:word 
    redraw 
    sleep 800m
    redraw 
    :q!
    :execute     SubtaskJira(g:ActualTicket)    
endfunction

function! JiraOpenReview() 
    :execute "ter jira listOpenReviews"
    redraw 
    sleep 800m
    redraw 
    :q!
    :execute     SubtaskJira(g:ActualTicket)    
endfunction



function! JiraReview(word) 
    :execute "ter jira transition \"In Review\" --noedit " . a:word 
    redraw 
    sleep 800m
    redraw 
    :q!
    :execute     SubtaskJira(g:ActualTicket)    
endfunction


function! JiraTodo(word) 
    :execute "ter jira transition \"Backlog\" --noedit  " . a:word 
    redraw 
    sleep 800m
    redraw 
    :q!
    :execute    SubtaskJira(g:ActualTicket)    
endfunction

function! JiraProgress(word) 
    :execute "ter jira transition \"In Progress\" --noedit  " . a:word 
    redraw 
    sleep 800m
    redraw 
    :q!
    :execute    SubtaskJira(g:ActualTicket)    
endfunction


function! JiraUnassign(word) 
    :execute "ter jira unassign " . a:word 
    redraw 
    sleep 800m
    redraw
    :q!
    :execute    SubtaskJira(g:ActualTicket)    
endfunction

function! JiraAssign(word) 
    :execute "ter jira assign " . a:word . " m9338"
    redraw 
    sleep 800m
    redraw 
    :q!
    :execute    SubtaskJira(g:ActualTicket)    
endfunction

function! MineJira()
    :normal ggdG
    :execute "ter jira mine"
endfunction

function! JiraCreateSubtask(word)
    :execute "ter bash /home/maren/dotfiles/vim/scripts/createSubtask.sh " . a:word
    :normal 4j
    :normal i
endfunction

function JiraOpen(word)
    :execute "!qutebrowser https://jira.sixt.com/browse/" . a:word
endfunction

function! JiraPlatform()
    :normal ggdG
    :execute "ter jira platform"
endfunction

function! ViewJira(word)
    :normal ggdG
    :execute "read ! jira view " . a:word 
endfunction

