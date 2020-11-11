
function SendGithubComment() abort

    :silent exec "!bash /home/maren/dotfiles/scripts/githubtest.sh -l "
    redraw! 
endfunction

function CreateGitHubComment() abort

    let lineNumber=line(".") + 1
    let filepath=expand("%")
    :silent exec "!bash /home/maren/dotfiles/scripts/githubtest.sh -v ". lineNumber ." " .filepath  
    redraw!

endfunction

function ViewPullRequests() abort
    let    prId=expand("<cword>")
    let prLink = system("gh pr view ".prId." | tail -n1 | cut -d' ' -f7 ")[:-2]. ".diff"

    "let curlcommand="curl -L --request GET --url ".prLink." --header 'authorization: Bearer ".token." ' -o /tmp/tempDiff.diff"
    "    let callDiff = system(curlcommand)[:-2]


    execute 'CodeReview '. prLink

endfunction

function! GetOpenPullrequest()

    let prList = system("gh pr list ")
    vsplit ListPullRequests
    normal! ggdG
    setlocal buftype=nofile
    call append(0, split(prList, '\v\n'))   

endfunction
