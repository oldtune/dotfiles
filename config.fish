# ~/.config/fish/config.fish

starship init fish | source
if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.cargo/bin
fish_add_path ~/.cargo/env
starship init fish | source
