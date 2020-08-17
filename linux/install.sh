#!/bin/bash

#sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [[ -z "$1" ]]
then
	HOM="$HOME"
else
	HOM="$1"
fi

cp zsh/.zshrc "$HOM"
cp zsh/ever.zsh-theme "$HOM"/.oh-my-zsh/themes
cp vim/.vimrc "$HOM"
sudo cp vim/solarized.vim /usr/share/vim/vim81/colors
