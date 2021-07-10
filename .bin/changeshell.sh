#!/bin/bash
set -ue

function whichdistro() {
  if [ -f /etc/debian_version ]; then
    echo debian
    return
  elif [ -f /etc/alpine-release ]; then
    echo alpine
    return
  fi
}

distro=$(whichdistro)

if [[ $distro == "debian" ]]; then
  command chsh -s $(which zsh)
elif [[ $distro == "alpine" ]]; then
  command sed -i -e "s/bin\/ash/bin\/zsh/" /etc/passwd
else
  :
fi