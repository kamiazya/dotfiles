# .zshの設定ファイルを読むように
export ZDOTDIR=$HOME/.zsh

# 日本語の設定
export LANG=ja_JP.UTF-8
export KCODE=u

# GOPATHの設定
export GOPATH=~/Go
export PATH=$PATH:$GOPATH/bin/

# npm yarn関連のPATHの設定
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"
