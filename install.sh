#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
done

# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew install git
# brew cask install google-chrome
# brew cask install cmd-eikana
# brew install docker
# brew cask search docker
# brew cask install google-japanese-ime 



#  vim ~/.gitconfig
#   1 [ghq]
#   2     root = ~/.ghq
#   3     root = ~/Go/src

# cat vscode_plugins | xargs -n 1 code --install-extension

# brew cask install alfred

# brew cask install google-backup-and-sync

# go get -u github.com/justjanne/powerline-go 
