# custom prompt depending on operating system
if [[ "$OSTYPE" == *"darwin"* ]]; then
    export PS1='%~ 🏴‍☠️$'
else
    export PROMPT='%~ $'
fi

#custom aliases
alias c="clear"
alias n="nvim"
alias t="tmux"
alias ls="ls --color=auto"
alias ll="ls -la --color=auto"

#mise, zoxide and fzf
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(~/.local/bin/mise activate zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
