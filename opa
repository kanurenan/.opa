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