export DOTFILES="$HOME/.dotfiles"
export WORKDIR="$HOME/workspace"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="vim"
export VISUAL="vim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=50000
export SAVEHIST=50000

export VIMCONFIG="$XDG_CONFIG_HOME/vim"

# sets English everywhere, so that programs behave predictably
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8" # fixes encoding issue when copying

export PATH=$HOME/.local/bin:$PATH
export PATH="$PATH:$HOME/.lmstudio/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

