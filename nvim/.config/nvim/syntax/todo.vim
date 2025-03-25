" Avoid reloading if already set
if exists("b:current_syntax")
  finish
endif

" Highlight common task keywords
syntax keyword todoTask TODO FIXME NOTE

" Match checkboxes (e.g., [ ], [x], [X])
syntax match todoCheckbox /\v\[[ xX]\]/

" Highlight task statuses at the beginning of lines
syntax match todoDone /^DONE:.*/
syntax match todoCancelled /^CANCELLED:.*/

" Define highlight groups (adjust these as you like)
hi def link todoTask Identifier
hi def link todoCheckbox Special
hi def link todoDone Statement
hi def link todoCancelled Error

let b:current_syntax = "todo"
