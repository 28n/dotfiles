#!/bin/bash

eval "$(zoxide init bash)"

if [[ -f "$HOME/.custom/bash/aliases.sh" ]]; then
  source "$HOME/.custom/bash/aliases.sh"
fi
