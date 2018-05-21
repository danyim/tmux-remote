#!/usr/bin/env bash

tmux set -u prefix
tmux set -u key-table
tmux set -u window-status-current-style
tmux set -u window-status-current-format
tmux display "Remote mode: OFF"
tmux refresh-client -S
