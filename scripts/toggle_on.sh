#!/usr/bin/env bash

# Save the current status-left so toggle_off can restore it
tmux set -g @remote-saved-status-left "$(tmux show-option -gv status-left)"

tmux set prefix None
tmux set key-table off
tmux set -g status-left "#[fg=colour228,bg=colour52] REMOTE >>>  #[bg=default] "
tmux if -F '#{pane_in_mode}' 'send-keys -X cancel'
tmux refresh-client -S
