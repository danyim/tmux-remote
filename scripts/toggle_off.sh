#!/usr/bin/env bash

tmux set -u prefix
tmux set -u key-table
tmux set -g status-left ""
# tmux display "Remote mode: OFF"
tmux refresh-client -S
