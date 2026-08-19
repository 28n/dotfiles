export LANG=en_US.UTF-8
unset LC_ALL
unset LC_COLLATE

if [[ -f "$HOME/.profile" ]]; then
    source "$HOME/.profile"
fi

[[ -f ~/.bashrc ]] && source ~/.bashrc
