" vim source for emails
" recomend using a filelists 
function! coc#source#email#init() abort
  return {
        \ 'priority': 9,
        \ 'triggerCharacters': ['INTS'],
        \ 'filetypes': ['markdown','gitcommit', 'yaml' ],
        \ 'shortcut': 'JIRA'
        \}
endfunction

function! coc#source#email#complete(opt, cb) abort
  let items = systemlist('jira shortList')
  call a:cb(items)
endfunction


