if expand('%:p:h') =~# '/frontend-cache\(/\|$\)'
    setlocal makeprg=../../../gradlew
    setlocal errorformat=%t:\ file://%f:%l:%c\ %m,%t:\ file://%f:%l:%c\ %m,%-G%.%#
    nnoremap <leader>c <cmd>make check<CR>
    nnoremap <leader>r <cmd>make run<CR>
elseif findfile('build.gradle.kts', expand('%:p:h') . ';') !=# ''
    setlocal makeprg=./gradlew\ check
    setlocal errorformat=%t:\ file://%f:%l:%c\ %m,%t:\ file://%f:%l:%c\ %m,%-G%.%#
    nnoremap <leader>c <cmd>make check<CR>
    nnoremap <leader>r <cmd>make run<CR>
endif

