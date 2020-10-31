" Vim syntax file
" Language:         JBehave Story Syntax
" Maintainer:       Michael Brailsford

" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword gwt Given When Then Meta Narrative Scenario And Before Lifecycle Scope
syn keyword tableHeader reqUrl reqMethod respBody respStatusCode respContentType reqBody times contentType headers
syn match gwt "^\s*And"

syn match pipes "\|"
syn match   reference           "resources.*.json"
syn match   reference           "resources.*.ok"
syn match   reference           "resources.*.csv"
syn match   reference           "${DATA_DIR}.*.ok\s"
syn match   reference           "${DATA_DIR}.*.csv\s"
syn match   reference           "${DATA_DIR}.*.json\s"
syn keyword queues "com.sixt.*\s"
hi link pipes Operator
hi link reference String  
hi link queues Question  

hi link tableHeader DiffText
hi link gwt Identifier
