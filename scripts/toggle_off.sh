#!/usr/bin/env bash

tmux set -u prefix
tmux set -u key-table

# Restore the original status-left saved by toggle_on, then clear the saved value so
# the next toggle_on cycle saves the current status-left rather than the stale snapshot.
saved="$(tmux show-option -gv @remote-saved-status-left 2>/dev/null)"
if [[ -n "$saved" ]]; then
    tmux set -g status-left "$saved"
fi
tmux set -gu @remote-saved-status-left

tmux refresh-client -S
