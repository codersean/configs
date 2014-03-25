#!/usr/bin/env bash
#
# NOTE: for a windows version change ~/.vim to ~\vimfiles

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

#Special work needed for this taglist, version taglist 4.6
curl -Sso ~/.vim/bundle/taglist.zip http://vim.sourceforge.net/scripts/download_script.php?src_id=19574 
mkdir -p ~/.vim/bundle/taglist
cd ~/.vim/bundle/taglist
unzip ~/.vim/bundle/taglist.zip
rm ~/.vim/bundle/taglist.zip

