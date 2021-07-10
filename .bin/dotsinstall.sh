#!/bin/bash
set -ue

DOTPATH=$HOME/dotfiles

command mkdir ~/.zshssssss
command touch /root/bar

source $DOTPATH/.bin/packageinstall.sh

source $DOTPATH/.bin/changeshell.sh

source $DOTPATH/.bin/zshinstall.sh

for fpath in $DOTPATH/.??* ; do
    f="${fpath##*/}"
    [ "$f" = ".git" ] && continue
    [ "$f" = ".bin" ] && continue
    [ "$f" = ".gitignore" ] && continue

    #command cat "$DOTPATH/$f" > "$HOME/$f"
done

command ln -fs ~/dotfiles/.zshrc .
command touch /root/.zsh/hoge

command echo ""
command echo "#####################################################"
command echo -e "\e[1;36m $(basename $0) install success!!! \e[m"
command echo "#####################################################"
command echo ""
