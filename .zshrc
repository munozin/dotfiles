# custom prompt
export PROMPT='%~ 🏴‍☠️$'

# enable colors
export CLICOLOR=1

#custom aliases
alias c="clear"
alias n="nvim"
alias t="tmux"
alias ll="ls -laG"

#mise, zoxide and fzf
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/munozbrrr/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(~/.local/bin/mise activate zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
