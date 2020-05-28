" recomend using a filelists 
function! coc#source#jiraCompletion#init() abort
  return {
        \ 'priority': 1,
        \ 'triggerCharacters': ['INTS'],
        \ 'filetypes': ['markdown','gitcommit', 'yaml' ],
        \ 'shortcut': 'JIRA'
        \}
endfunction

function! coc#source#jiraCompletion#complete(opt, cb) abort
  let items = systemlist('jira shortList')
  call a:cb(items)
endfunction


