#!/bin/bash

GIT_WORK="work/git"

echo $GIT_WORK
mkdir -p ~/"$GIT_WORK/config"

git clone https://github.com/nsndeck/config.git ~/"$GIT_WORK/config"

cp ~/"$GIT_WORK/config/.bash"* ~
cp ~/"$GIT_WORK/config/.tmux.conf" ~
cp ~/"$GIT_WORK/config/.gitconfig" ~
cp ~/"$GIT_WORK/config/.vimrc" ~
cp ~/"$GIT_WORK/config/tmuxses.sh" ~
cp ~/"$GIT_WORK/config/update.sh" ~

# required for vim to run after first start install vim plugins
mkdir -p .vim/cache
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

