#!/usr/bin/env bash

tmux set prefix None
tmux set key-table off
tmux set window-status-current-format "  #I#[fg=blue]:#[fg=colour256]#W#[fg=green]#F  '"
tmux set window-status-current-style "bold,bg=colour255"
tmux if -F '#{pane_in_mode}' 'send-keys -X cancel'
tmux display "Remote mode: ON"
tmux refresh-client -S
