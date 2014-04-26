#!/usr/bin/env bash
#
# NOTE: for a windows version change ~/.vim to ~\vimfiles

#make sure place to store swp files exists
mkdir -p ~/.vimswp

echo "Setting up Pathogen to manage vim plugins"

echo "- Getting pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "- Getting plugins"
git clone https://github.com/mhinz/vim-startify ~/.vim/bundle/vim-startify
git clone https://github.com/msanders/snipmate.vim ~/.vim/bundle/snipmate
git clone http://repo.or.cz/r/vcscommand.git ~/.vim/bundle/vcscommand
git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/matze/vim-move ~/.vim/bundle/vim-move
git clone https://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround
git clone https://github.com/tpope/vim-repeat ~/.vim/bundle/vim-repeat
git clone https://github.com/tpope/vim-eunuch ~/.vim/bundle/vim-eunuch
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

