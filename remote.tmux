#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/variables.sh"
source "$CURRENT_DIR/scripts/helpers.sh"

main() {
	if option_value_not_changed "@remote-toggle-keybinding" "F12"; then
		tmux set-option -g @remote-toggle-keybinding F12
	fi

	# Press F12 to toggle "remote mode"; disables host bindings for using tmux
	# in nested sessions
	tmux bind -T root $toggle_key  \
	  set prefix None \;\
	  set key-table off \;\
	  set window-status-current-format "  #I#[fg=blue]:#[fg=colour256]#W#[fg=green]#F  '" \;\
	  set window-status-current-style "bold,bg=colour255" \;\
	  if -F '#{pane_in_mode}' 'send-keys -X cancel' \;\
	  display "Remote mode: on" \;\
	  refresh-client -S \;\

	tmux -T off $toggle_key \
	  set -u prefix \;\
	  set -u key-table \;\
	  set -u window-status-current-style \;\
	  set -u window-status-current-format \;\
	  display "Remote mode: off" \;\
	  refresh-client -S
}

main
