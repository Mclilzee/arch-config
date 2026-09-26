if findfile('build.gradle.kts', expand('%:p:h') . ';') !=# ''
    setlocal makeprg=./gradlew\ check
    setlocal errorformat=e:\ file://%f:%l:%c\ %m,w:\ file://%f:%l:%c\ %m,%-G%.%#
endif

