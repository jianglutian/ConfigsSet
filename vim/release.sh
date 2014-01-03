#!/bin/bash
rm -rf ~/vim_bak
mv -f ~/.vim ~/vim_bak
rm -f ~/vimrc_bak
mv -f ~/.vimrc ~/vimrc_bak
cp -r release ~/.vim
cp bin/* ~/bin/
cp vimrc.jlt ~/.vimrc

