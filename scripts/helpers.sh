option_not_exists() {
  local option="$1"
  local default_value="$2"
  local option_value=$(tmux show-option -gv "$option")
  [[ "$option_value" == unknown* ]]
}
