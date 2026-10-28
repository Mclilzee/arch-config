if findfile('build.gradle.kts', expand('%:p:h') . ';') !=# ''
    setlocal makeprg=./gradlew\ check
    setlocal errorformat=%f:%l:\ %trror:\ %m,%f:%l:\ %tarning:\ %m,%-G%.%#
endif

