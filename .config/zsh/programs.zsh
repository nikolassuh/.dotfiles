# determines search program for fzf
if command -v rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --ignore-file=~/.config/git/ignore .'
fi
export FZF_COMPLETION_OPTS='--border --info=inline'


# https://docs.brew.sh/Manpage#environment
# install/update
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_DISPLAY_INSTALL_TIMES=1

# cleanup all cached files older than this many days.
export HOMEBREW_CLEANUP_MAX_AGE_DAYS=60  # default 120

# misc
export HOMEBREW_NO_ANALYTICS=1

if type brew &>/dev/null; then
  eval "$(brew shellenv)"
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"


export RIPGREP_CONFIG_PATH="$HOME/dotfiles/.config/rg/ripgreprc"
