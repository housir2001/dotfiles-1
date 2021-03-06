" recomend using a filelists 
function! coc#source#jbehaveCompletion#init() abort
  return {
        \ 'priority': 1,
        \ 'triggerCharacters': ['G', 'T', 'W','A'],
        \ 'filetypes': ['story', 'jbehave' ],
        \ 'shortcut': 'JBEHAVE'
        \}
endfunction

function! coc#source#jbehaveCompletion#complete(opt, cb) abort
    let items = systemlist('cat ~/dotfiles/scripts/data/jbehaveAsserts')
  call a:cb(items)
endfunction


