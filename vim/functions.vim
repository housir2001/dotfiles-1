

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
    :execute "read ! jira listSubtasks " . substitute(a:word, ":", "", "")
endfunction


function! CommentJira(word)
    :execute "ter jira comment " . a:word  
endfunction

function! JiraDone(word) 
    :execute "ter jira transition \"Done\"  " . a:word 
endfunction


function! JiraReview(word) 
    :execute "ter jira transition \"In Review\" " . a:word 
endfunction


function! JiraProgress(word) 
    :execute "ter jira transition \"In Progress\"  " . a:word 
endfunction


function! JiraUnassign(word) 
    :execute "ter jira unassign " . a:word 
endfunction

function! JiraAssign(word) 
    :execute "ter jira assign " . a:word . " m9338"
endfunction

function! MineJira()
    :normal ggdG
    :execute "ter jira mine"
endfunction

function! JiraPlatform()
    :normal ggdG
    :execute "ter jira platform"
endfunction

function! ViewJira(word)
    :normal ggdG
    :execute "read ! jira view " . a:word 
endfunction
