#!/usr/bin/env bash

tmux set prefix None
tmux set key-table off
tmux set -g status-left "#[fg=colour255][REMOTE]"
tmux if -F '#{pane_in_mode}' 'send-keys -X cancel'
tmux refresh-client -S
