#!/usr/bin/env bash

if grep -q Microsoft /proc/version; then
  wsl=1
  echo "Ubuntu on Windows"
else
  wsl=0
  echo "native Linux"
fi

echo "Install zsh, tmux..."

sudo apt update
sudo apt install zsh tmux

echo "Install Oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Install tmux theme"
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

echo "Apply my configuration"


if [ $wsl -eq '1' ]; then

else

fi
