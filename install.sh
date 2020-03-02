#!/bin/zsh

DIR=".hollow"

mkdir -pv ~/${DIR}/{bash,bin,share,tmux,vim,zsh}

## Profile config
echo -e "Profile config"
if [ -f ~/.profile ] || [ -L ~/.profile ]; then
    rm -v ~/.profile
fi

cp -v files/profile ~/${DIR}/
ln -sv ~/${DIR}/profile ~/.profile

## Bash config
echo -e "\nBash config"
if [ -f ~/.bashrc ] || [ -L ~/.bashrc ]; then
    rm -v ~/.bashrc
fi

cp -rfv files/bash ~/${DIR}/
ln -sv ~/${DIR}/bash/bashrc ~/.bashrc

## Vim config
echo -e "\nVim config"
if [ -f ~/.vimrc ] || [ -L ~/.vimrc ]; then
    rm -v ~/.vimrc
fi

cp -rfv files/vim ~/${DIR}/
ln -sv ~/${DIR}/vim/vimrc ~/.vimrc


## Vim config
echo -e "\nTmux config"
if [ -f ~/.tmux.conf ] || [ -L ~/.tmux.conf ]; then
    rm -v ~/.tmux.confs
fi

cp -rfv files/tmux ~/${DIR}/
ln -sv ~/${DIR}/tmux/tmux.conf ~/.tmux.conf
