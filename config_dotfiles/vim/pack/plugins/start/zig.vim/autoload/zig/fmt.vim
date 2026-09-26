" Adapted from fatih/vim-go: autoload/go/fmt.vim
"
" Copyright 2011 The Go Authors. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.

function! zig#fmt#Format() abort
  " Save cursor position and many other things.
  let view = winsaveview()

  if !executable('zig')
    echohl Error | echomsg "no zig binary found in PATH" | echohl None
    return
  endif

  let cmdline = 'zig fmt --stdin --ast-check'
  if expand('%:e') is? 'zon'
    let cmdline = cmdline . ' --zon'
  endif

  let current_buf = bufnr('')

  " The formatted code is output on stdout, the errors go on stderr.
  if exists('*systemlist')
    silent let out = systemlist(cmdline, current_buf)
  else
    silent let out = split(system(cmdline, current_buf))
  endif

  let err = v:shell_error
  if err == 0
    " remove undo point caused via BufWritePre.
    try | silent undojoin | catch | endtry

    " Replace the file content with the formatted version.
    if exists('*deletebufline')
      call deletebufline(current_buf, len(out), line('$'))
    else
      silent execute ':' . len(out) . ',' . line('$') . ' delete _'
    endif
    call setline(1, out)

    " No errors detected, close the loclist.
    call setloclist(0, [], 'r')
    lclose
  endif

  call winrestview(view)
  if err != 0
    echohl Error | echomsg "zig fmt returned error" | echohl None
    return
  endif

  " Run the syntax highlighter on the updated content and recompute the folds if
  " needed.
  syntax sync fromstart
endfunction
