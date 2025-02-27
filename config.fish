# Start X at login
if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx -- -keeptty
  end
end

# Start tmux
if status is-interactive
and not set -q TMUX
  set -gx FZF_DEFAULT_COMMAND "fzf --tmux"
  set -gx FZF_DEFAULT_OPTS "--height 40% --tmux bottom,40% --layout reverse --border --color 'bg+:#ff007b,fg:#141a1f,fg+:#142a2f,hl:#52697a,hl+:#52697a,border:#3d4f5c,info:#ff007b,marker:#a875f0,pointer:#ff007b,prompt:#ff007b,spinner:#ff007b,header:#ff007b'"
  if tmux has-session -t master
    exec tmux attach-session -t master
  else
    tmux new-session -s master
  end
end

fish_add_path -p $HOME/.cargo/bin/
fish_add_path -p $HOME/.yarn/bin/
fish_add_path -p $HOME/node_modules/
#fish_add_path -p /usr/lib/node_modules/
#fish_add_path -p /usr/bin/
fish_add_path -p $HOME/.local/share/gem/ruby/3.3.0/bin/
fish_add_path -p $HOME/.local/share/nvim/mason/bin/

fzf_configure_bindings
