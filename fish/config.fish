
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F
  bind \ct peco_select_tmux_session
end

set -Ux GOPATH $HOME/Go/

set -U fish_user_paths $GOPATH/bin $fish_user_paths
