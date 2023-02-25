#!/bin/bash

sudo apt install git clang{,-format} cscope exuberant-ctags python3-autopep8 \
    isort

mkdir -p ~/.vim/pack/minpac/opt
if [ ! -d ~/.vim/pack/minpac/opt/minpac ]; then
    git clone https://github.com/k-takata/minpac ~/.vim/pack/minpac/opt/minpac
fi

echo
echo "Done. Now open vim and run :call minpac#update()"
