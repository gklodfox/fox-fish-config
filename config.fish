set fish_greeting

# Start sway at login
if status is-login
  if test -z $DISPLAY; and test (tty) = "/dev/tty1"
    sway
  end
end

status is-interactive; and begin
    set fish_tmux_autostart true
end

# fish_add_path -p $HOME/.cargo/bin/
#fish_add_path -p $HOME/.yarn/bin/
#fish_add_path -p $HOME/node_modules/
#fish_add_path -p /usr/lib/node_modules/
#fish_add_path -p /usr/bin/
#fish_add_path -p $HOME/.local/share/gem/ruby/3.3.0/bin/
# fish_add_path -p $HOME/.local/share/gem/ruby/3.3.0/bin/
# fish_add_path -p $HOME/.local/share/nvim/mason/bin/
#fzf --fish | source

#fzf_configure_bindings
