status is-interactive; and begin
    set -gx fish_key_bindings fish_vi_key_bindings
    set -gx fish_tmux_autostarted true
    set -gx fish_tmux_unicode true
    set -gx fish_bind_mode insert
    set -U autols_command exa -laB --git --group-directories-first
end
