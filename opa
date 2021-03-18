#! /bin/bash

# echo
if [ $1 == 'echo' ]; then
    echo 'Opaaaaaaaa! ☕'
fi

# flutter --version
if [ $1 == 'f_v' ]; then
    flutter --version
fi

# flutter doctor --verbose
if [ $1 == "f_doc-v" ]; then
    flutter doctor --verbose
fi

# flutter downgrade v1.22.6
if [ $1 == "f_down" ]; then
    cd ~/development/flutter
    git checkout 1.22.6
    cd
    flutter --version
fi

# flutter upgrade
if [ $1 == "f_up" ]; then
    cd ~/development/flutter
    git checkout stable
    cd
    flutter --version
fi