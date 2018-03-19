# 共通
[ -f $ZDOTDIR/.zshrc_Common ] && . $ZDOTDIR/.zshrc_Common

# OS依存
[ -f $ZDOTDIR/.zshrc_`uname` ] && . $ZDOTDIR/.zshrc_`uname`

# 環境依存のもの
[ -f $ZDOTDIR/.zshrc_local ] && . $ZDOTDIR/.zshrc_local

## Alias
# core
alias ls='gls --color=auto'
alias l='ls'
alias ll='ls -l'
alias rm='rm -i'

# git
alias gs='git status'
alias gl='git log --graph'

# rails
alias srake='spring rake'

# docker
# Docker execでシェルに入るときにpecoを使っていい感じに選択できるように
alias de='docker exec -it $(docker ps | peco | cut -d " " -f 1) /bin/sh'
