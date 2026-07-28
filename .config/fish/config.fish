status is-interactive; and begin
    # Interactive mode
    tmux
end

source $XDG_CONFIG_DIR/fish/01_aliases.fish
source $XDG_CONFIG_DIR/fish/02_fish_settings.fish    source $XDG_CONFIG_DIR/fish/01_aliases.fish
source $XDG_CONFIG_DIR/fish/03_environment.fish
source $XDG_CONFIG_DIR/fish/04_functions.fish
source $XDG_CONFIG_DIR/fish/05_theme.fish
zoxide init fish | source
