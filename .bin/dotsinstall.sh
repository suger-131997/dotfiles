#!/bin/bash
set -ue


DOTPATH=$HOME/dotfiles

source $DOTPATH/.bin/packageinstall.sh

command zsh
command chsh -s $(which zsh)

source $DOTPATH/.bin/zshinstall.sh

for fpath in $DOTPATH/.??* ; do
    f="${fpath##*/}"
    [ "$f" = ".git" ] && continue
    [ "$f" = ".bin" ] && continue
    [ "$f" = ".gitignore" ] && continue

    command ln -snfv "$DOTPATH/$f" "$HOME/$f"
done

command echo ""
command echo "#####################################################"
command echo -e "\e[1;36m $(basename $0) install success!!! \e[m"
command echo "#####################################################"
command echo ""
