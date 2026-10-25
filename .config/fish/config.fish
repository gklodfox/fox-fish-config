status is-interactive; and begin
<<<<<<< HEAD
    # Interactive mode
    source $HOME/.config/fish/02_fish_settings.fish
    source $HOME/.config/fish/01_aliases.fish
    source $HOME/.config/fish/03_environment.fish
    source $HOME/.config/fish/04_functions.fish
    source $HOME/.config/fish/05_theme.fish
    tmux
    zoxide init fish | source
end
=======
    tmux-workspaces -a
end

zoxide init fish | source
>>>>>>> b9ad5b4 (updates)
