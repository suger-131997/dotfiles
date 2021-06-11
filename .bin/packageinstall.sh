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
  apt update && apt install -y zsh curl
elif [[ $distro == "alpine" ]]; then
  apk update && apk add curl zsh
else
  :
fi