function! Show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

function! RunMvnTest() 
    " Dealing with old java
    let mvnResult = system("export JAVA_HOME=/usr/lib/jvm/java-8-openjdk; mvn test --offline")

    vsplit __Potion_Bytecode__
    normal! ggdG
    setlocal buftype=nofile

    call append(0, split(mvnResult, '\v\n'))
endfunction


function! RunMvnThisTest(file) 
    let mvnResult = system("export JAVA_HOME=/usr/lib/jvm/java-8-openjdk;mvn test --offline -Dtest=" . a:file)

    vsplit __Potion_Bytecode__
    normal! ggdG
    setlocal buftype=nofile

    call append(0, split(mvnResult, '\v\n'))
endfunction


function! StopTime() 
    :execute "ter watson stop"
    redraw 
    sleep 400m
    redraw 
    :q!
endfunction

function! StartTimeTracking(word) 
    :execute "ter watson start " . a:word 
    redraw 
    sleep 400m
    redraw 
    :q!
endfunction


function! ViewSprint() 
    let tmpWord=expand('<cWORD>')
    split a:tmpWord
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
    :normal ggdG
    :execute "read ! jira listOpenReviews " 

endfunction

function! JiraReview(word) 
    :execute '!jira transition \"In Review\" --noedit ' . a:word 
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
    :execute "silent !jira transition \"In Progress\" --noedit " . a:word . "
    :execute    SubtaskJira(g:ActualTicket)    
endfunction


function! JiraUnassign(word) 
    :execute '!jira unassign ' . a:word 
    :execute    SubtaskJira(g:ActualTicket)    
endfunction

function! JiraAssign(word) 
    :execute "silent !jira unassign " . a:word . " m9338"
    :execute    SubtaskJira(g:ActualTicket)    
endfunction

function! MineJira()
    :normal ggdG
    :execute "ter jira mine"
endfunction

function! JiraCreateSubtask(word)
    :call VimuxRunCommand("bash /home/maren/dotfiles/vim/scripts/createSubtask.sh " . a:word)<CR>
    :call VimuxZoomRunner()<CR>
endfunction

function JiraOpen(word)
    :execute "!qutebrowser https://jira.sixt.com/browse/" . a:word
endfunction

function! JiraPlatform()
    :normal ggdG
    :execute ':normal! i Parent Story ' . a:word
    :execute "read ! jira platform "
endfunction

function! ViewJira(word)
    let jiraView = system("jira view " . a:word)

    vsplit ViewTicket
    normal! ggdG
    setlocal buftype=nofile
    call append(0, split(jiraView, '\v\n'))   
    :%s/\r/\n/g
    :%s/\%x00//g
endfunction

function! Selection() abort
    try
        let a_save = @a
        silent! normal! gv"ay
        return @a
    finally
        let @a = a_save
    endtry
endfunction

function! BeautifyMvnLog() 
    let selection = Selection()
    " using jq for formatting
    let output = system("~/dotfiles/scripts/parseMvnLogs.sh '". selection."'")
    call append(line('.'), split(output, '\n'))

endfunction

function! DoPrettyXML()
    " save the filetype so we can restore it later
    let l:origft = &ft
    set ft=
    " delete the xml header if it exists. This will
    " permit us to surround the document with fake tags
    " without creating invalid xml.
    1s/<?xml .*?>//e
    " insert fake tags around the entire document.
    " This will permit us to pretty-format excerpts of
    " XML that may contain multiple top-level elements.
    0put ='<PrettyXML>'
    $put ='</PrettyXML>'
    silent %!xmllint --format -
    " xmllint will insert an <?xml?> header. it's easy enough to delete
    " if you don't want it.
    " delete the fake tags
    2d
    $d
    " restore the 'normal' indentation, which is one extra level
    " too deep due to the extra tags we wrapped around the document.
    silent %<
    " back to home
    1
    " restore the filetype
    exe "set ft=" . l:origft
endfunction

command! PrettyXML call DoPrettyXML()
