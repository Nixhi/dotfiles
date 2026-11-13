# ~/.config/fish/config.fish

## Builtin

# Aliases
alias l='ls -lah'
alias la='ls -Ah'
alias ll='ls -lh'

## External

# Replaces
alias ls='lsd'
alias bat='cat'

# Features
if status is-interactive
    if command -q starship
        starship init fish | source
    end
    
    if command -q zoxide
        zoxide init fish | source
    end
    
    if command -q atuin
        atuin init fish | source
    end
end
