# Homebrew on Apple Silicon macOS
if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Homebrew on Intel macOS
if [ -x /usr/local/bin/brew ]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

export EDITOR="vim"
export VISUAL="$EDITOR"

if [ -f "$HOME/.config/shell/local.sh" ]; then
    . "$HOME/.config/shell/local.sh"
fi
