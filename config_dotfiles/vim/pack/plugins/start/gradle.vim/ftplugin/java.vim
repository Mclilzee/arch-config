if findfile('build.gradle.kts', expand('%:p:h') . ';') !=# ''
    setlocal makeprg=./gradlew\ check
    setlocal errorformat=%f:%l:\ error:\ %m,%f:%l:\ warning:\ %m,%-G%.%#
endif

