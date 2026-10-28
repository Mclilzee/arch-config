if exists("current_compiler")
  finish
endif
let current_compiler = "typescript"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=npm\ run\ build
CompilerSet errorformat=%f\ %#(%l\\,%c):\ %trror\ TS%n:\ %m,%trror\ TS%n:\ %m,%-P%f,\%\\s%#%l:%c\ %#\ %trror\ \ %m,\%\\s%#%l:%c\ %#\ %tarning\ \ %m,\%-Q,\%-G%.%#,

let &cpo = s:cpo_save
unlet s:cpo_save
