# determines search program for fzf
if command -v rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg .'
fi
export FZF_COMPLETION_OPTS='--border --info=inline'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"


export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/rg/ripgreprc"


if [[ $(uname) == "Darwin" ]]; then
  # For MacOS
  # https://docs.brew.sh/Manpage#environment
  export HOMEBREW_NO_AUTO_UPDATE=1
  export HOMEBREW_DISPLAY_INSTALL_TIMES=1

  # cleanup all cached files older than this many days.
  export HOMEBREW_CLEANUP_MAX_AGE_DAYS=60  # default 120

  # misc
  export HOMEBREW_NO_ANALYTICS=1

  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="$PATH:/opt/homebrew/bin"
fi
