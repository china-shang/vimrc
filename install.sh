#!/bin/bash
apt-get update
apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial -y
apt-get remove vim  -y
apt-get remove vim-runtime  -y
apt-get remove gvim  -y
apt-get remove vim-tiny  -y
apt-get remove vim-common  -y
apt-get remove vim-gui-common  -y
apt-get install ctags -y
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-i386-linux-gnu/ --enable-perlinterp --enable-gui=gtk2 --enable-cscope --enable-luainterp --enable-perlinterp --enable-multibyte --prefix=/usr/local/vim
make VIMRUNTIMEDIR=/usr/share/vim/vim74
ake install
echo "vim has been installed"
cd ..
rm ~/.vimrc
cp .vimrc ~/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -c BundleInstall
apt-get install clang -y
apt-get install build-essential cmake python-dev -y 

cd  ~/.vim/bundle/YouCompleteMe
~/ycm_build$ cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON ~/.vim/bundle/YouCompleteMe/cpp  
    
 #if ycm have error
#cd ~
#madir ycm_build
#cd ycm_build
#cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON ~/.vim/bundle/YouCompleteMe/cpp  
#make ycm_support_libs

