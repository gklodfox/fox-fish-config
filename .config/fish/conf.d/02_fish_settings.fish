status is-interactive; and begin
    set -gx fish_key_bindings fish_vi_key_bindings
    set -gx fish_tmux_autostarted true
    set -gx fish_tmux_fixterm_with_256colors tmux-256colors
    set -gx fish_tmux_unicode true
    set -gx fish_bind_mode insert
end
