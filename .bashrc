# Set vim bindings.
set -o vi

# Bind search history on up/down keys.
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Keep a much longer history. 
HISTSIZE=-1
HISTFILESIZE=-1
