# homebrew
if type brew &>/dev/null; then
  eval "$(brew shellenv)"
fi


# zsh-autosuggestions
source "$ZSH_CONFIG_DIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
bindkey '^n' autosuggest-accept

