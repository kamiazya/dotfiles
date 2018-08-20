
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F
  bind \ct peco_select_tmux_session
  bind \co open_in_vscode
  bind \ce translate_j2e
end

set -Ux GOPATH $HOME/Go/

set -U fish_user_paths $GOPATH/bin ~/google-cloud-sdk/bin $fish_user_paths
set -U fish_user_paths $GOPATH/bin ~/development/flutter/bin $fish_user_paths

