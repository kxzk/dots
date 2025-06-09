if exists('b:current_syntax')
  finish
endif

" ───────────────────────────────────────────────────────────
"  2. Core entry prefixes: task:  note:  done:
" ───────────────────────────────────────────────────────────
syntax match agentmemTaskPrefix /^\s*task:\d\+:/ containedin=@agentmemTop
syntax match agentmemNotePrefix /^\s*note:\d\+:/ containedin=@agentmemTop
syntax match agentmemDonePrefix /^\s*done:\d\+:/ containedin=@agentmemTop
syntax cluster agentmemTop add=agentmemTaskPrefix,agentmemNotePrefix,agentmemDonePrefix

" highlight the numeric id inside the prefix
syntax match agentmemID /:\zs\d\+\ze:/ contained containedin=agentmemTaskPrefix,agentmemNotePrefix,agentmemDonePrefix

" everything after the second colon is free-form text
syntax match agentmemText /:\d\+:\zs.*/ contains=@Spell

" ───────────────────────────────────────────────────────────
"  3. Styling – inherit from built-in highlight groups
" ───────────────────────────────────────────────────────────
hi def link agentmemTaskPrefix  Identifier
hi def link agentmemNotePrefix  Special
hi def link agentmemDonePrefix  Comment
hi def link agentmemID          Number
hi def link agentmemText        String

let b:current_syntax = 'agentmem'
