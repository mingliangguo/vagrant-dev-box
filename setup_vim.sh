#!/usr/bin/env bash

# Remove previous installations
sudo apt-get remove -y vim vim-runtime vim-tiny vim-common

# Install dependencies
sudo apt-get install -y libncurses5-dev python-dev libperl-dev ruby-dev liblua5.2-dev

# Fix liblua paths
sudo ln -s /usr/include/lua5.2 /usr/include/lua
sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.2.so /usr/local/lib/liblua.so

# Clone vim sources
cd ~
git clone https://github.com/vim/vim.git

cd vim
./configure --prefix=/usr     \
    --enable-luainterp=yes    \
    --enable-perlinterp=yes   \
    --enable-pythoninterp=yes \
    --enable-rubyinterp=yes   \
    --enable-cscope           \
    --disable-netbeans        \
    --enable-multibyte        \
    --enable-largefile        \
    --enable-gui=no           \
    --with-features=huge      \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu
make VIMRUNTIMEDIR=/usr/share/vim/vim80

sudo apt-get install checkinstall
sudo checkinstall

# Set vim as your default editor
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

#  You can remove it from your system anytime using:
#  dpkg -r vim
#  
#  YouCompleteMe
#  ./install.py --clang-completer --tern-completer 
