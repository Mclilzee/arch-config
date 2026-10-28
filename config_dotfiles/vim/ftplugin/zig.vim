setlocal iskeyword+=@-@
setlocal formatoptions-=t formatoptions+=croql
setlocal suffixesadd=.zig,.zon
setlocal makeprg=zig\ build\ check\ $*
setlocal errorformat=%f:%l:%c:\ %trror:\ %m,%f:%l:%c:\ %tarning:\ %m,%-G%.%#
setlocal comments=:///,://!,://
setlocal commentstring=//\ %s

nnoremap <buffer> <leader>f call zig#fmt#Format()
augroup vim-zig
    autocmd! BufWritePre <buffer>
    autocmd BufWritePre <buffer> call zig#fmt#Format()
augroup END
