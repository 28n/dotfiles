case $- in
    *i*) ;;
    *) return ;;
esac

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend checkwinsize

if [[ -f "$HOME/.custom/bash/main.sh" ]]; then
    source "$HOME/.custom/bash/main.sh"
fi

