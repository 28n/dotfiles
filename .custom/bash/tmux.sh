# shellcheck shell=bash
# tmux shell helpers

# Attach to the most recently used session, or create the default one.
ta() {
  if tmux has-session 2>/dev/null; then
    tmux attach-session
  else
    tmux new-session -s main
  fi
}

# Create a named session in the current directory.
tn() {
  local name="${1:-$(basename "$PWD")}"
  name="${name//./_}"
  tmux new-session -A -s "$name" -c "$PWD"
}

# Fuzzy-select a project and attach or switch to its session.
ts() {
  "$HOME/.custom/bin/tmux-sessionizer"
}

# Concise session overview.
tl() {
  tmux list-sessions -F '#{?session_attached,●,○} #{session_name}  #{session_windows} windows  #{t:session_activity}'
}

# Kill a named session, defaulting to the current tmux session.
tk() {
  local name="${1:-}"
  if [[ -z "$name" && -n "${TMUX:-}" ]]; then
    name="$(tmux display-message -p '#S')"
  fi
  if [[ -z "$name" ]]; then
    printf 'usage: tk <session>\n' >&2
    return 2
  fi
  tmux kill-session -t "=$name"
}
