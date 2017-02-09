#!/usr/bin/env bash

echo "\n----- Configure VIM ------\n"
cp /vagrant/.vimrc ~/
cp /vagrant/.tern-project ~/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "\n----- Configure ssh ------\n"
cp /vagrant/id_rsa* ~/.ssh/


#
# if ! [-L /var/www ]; then
#     rm -rf /var/www
#     ln -fs /vagrant /var/www
# fi
#
