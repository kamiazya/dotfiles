
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F
end

set -Ux GOPATH $HOME/.ghq/