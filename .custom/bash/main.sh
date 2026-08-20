#!/bin/bash

eval "$(zoxide init bash)"

if [[ -f "$HOME/.custom/bash/aliases.sh" ]]; then
  source "$HOME/.custom/bash/aliases.sh"
fi

if [[ -f "$HOME/.custom/bash/tmux.sh" ]]; then
  # shellcheck source=tmux.sh
  source "$HOME/.custom/bash/tmux.sh"
fi
