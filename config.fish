set fish_greeting

# Start X at login
if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx -- -keeptty
  end
end

# Start tmux
if status --is-interactive
  if not tmux has-session -t Main
    tmux new -s Main
  end
  if not tmux has-session -t Config
    tmux new -s Config
  end
  if not tmux has-session -t Code
    tmux new -s Code
  end
  tmux attach -t Main
end

fish_add_path -p $HOME/.cargo/bin/
#fish_add_path -p $HOME/.yarn/bin/
#fish_add_path -p $HOME/node_modules/
#fish_add_path -p /usr/lib/node_modules/
#fish_add_path -p /usr/bin/
fish_add_path -p $HOME/.local/share/gem/ruby/3.3.0/bin/
fish_add_path -p $HOME/.local/share/nvim/mason/bin/
fzf --fish | source

#fzf_configure_bindings
