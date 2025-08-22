# using double quotes will evaluate vars once when the alias is set
# using single quotes will evaluate vars on invocation

# vars
DOTFILES_DIR="$HOME/.dotfiles"
CONFIGS_DIR="$DOTFILES_DIR/.config/"
ZSH_CONFIGS_DIR="$CONFIGS_DIR/zsh/"

# existing
alias chmod='chmod -v'
alias chown='chown -v'

alias cp='cp -v'

alias curl='curl --progress-bar --styled-output' # nicer progress bar

alias ln='ln -v'

alias mv='mv -v'

alias mkdir='mkdir -p'

alias rm='rm -v'

alias which='which -a'

# custom
alias dirls='dirs -v'
for index ({1..20}) alias "$index"="cd +${index}"; unset index

alias ll='ls -AhlF --color'

alias rmr='rm -R -f -v'

# cd
alias dls='cd $HOME/Downloads'
alias dots='cd $DOTFILES_DIR'
alias work='cd $HOME/projects'

# helpers
alias ip='echo "My IP Address:" && curl ifconfig.me && echo ""'
alias QQ='exit'

# python
alias python='python3'

# vim
alias vi='vim -u NORC'  # vim basic (without any config)
alias vrc='vim $CONFIGS_DIR/vim/vimrc'

# zsh
alias als='vim $ZSH_CONFIGS_DIR/aliases.zsh'
alias zrc='vim $ZSH_CONFIGS_DIR/.zshrc'
alias sozsh='source $ZSH_CONFIGS_DIR/.zshrc'

