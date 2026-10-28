if expand('%:p:h') =~# '/frontend-cache\(/\|$\)'
    setlocal makeprg=../../../gradlew\ check
    setlocal errorformat=%t:\ file://%f:%l:%c\ %m,%t:\ file://%f:%l:%c\ %m,%-G%.%#
elseif findfile('build.gradle.kts', expand('%:p:h') . ';') !=# ''
    setlocal makeprg=./gradlew\ check
    setlocal errorformat=%t:\ file://%f:%l:%c\ %m,%t:\ file://%f:%l:%c\ %m,%-G%.%#
endif

