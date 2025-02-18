if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

#oh-zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"

#plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

#word completion using TAB
bindkey '^I' forward-word

#custom aliases
alias c="clear"
alias n="nvim"
alias t="tmux"

# default editor
export EDITOR=vim
export VISUAL=vim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(~/.local/bin/mise activate zsh)"
eval "$(zoxide init zsh)"
