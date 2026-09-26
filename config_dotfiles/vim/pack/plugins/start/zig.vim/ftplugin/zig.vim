setlocal iskeyword+=@-@
setlocal formatoptions-=t formatoptions+=croql
setlocal suffixesadd=.zig,.zon
setlocal makeprg=zig\ build\ check\ $*
setlocal errorformat=%f:%l:%c:\ error:\ %m,%f:%l:%c:\ warning:\ %m,%-G%.%#
nnoremap <buffer> <leader>f :call zig#fmt#Format()<CR>
setlocal comments=:///,://!,://
setlocal commentstring=//\ %s

augroup vim-zig
    autocmd! BufWritePre <buffer>
    autocmd BufWritePre <buffer> call zig#fmt#Format()
augroup END
