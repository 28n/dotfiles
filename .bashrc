case $- in
    *i*) ;;
    *) return ;;
esac

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend checkwinsize

alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'
alias yst='yadm status'
alias ydf='yadm diff'
