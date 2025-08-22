# Use modern completion system
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'

git_color() {
  local git_status="$(git status 2> /dev/null)"
  local output_styles=""

  if [[ $git_status =~ "nothing to commit, working tree clean" ]]; then
    # cyan
    output_styles="14"
  elif [[ $git_status =~ "nothing added to commit but untracked files present" ]]; then
    # yellow
    output_styles="11"
  elif [[ $git_status =~ "no changes added to commit" ]]; then
    # yellow
    output_styles="11"
  elif [[ $git_status =~ "Changes to be committed" ]]; then
    # red
    output_styles="9"
  else
    output_styles="white"
  fi
  output_styles="%F{$output_styles}$1%f"

  # Other experimental status for when branch is ahead/behind or diverged
  if [[ $git_status =~ "is ahead" ]]; then
    # Makes background colored, like when highlighting text in the terminal
    output_styles="%S$output_styles%s"
  elif [[ $git_status =~ "diverged" ]]; then
    # Puts a big red square with the letter D inside it before the git branch name
    output_styles="%K{red}%F{black} D %f%k$output_styles"
  elif [[ $git_status =~ "behind" ]]; then
    # Underlines
    output_styles="%U$output_styles%u"
  fi

  echo "$output_styles"
}

setopt PROMPT_SUBST
PROMPT='%n@%M %F{013}%~%f ($(git_color ${vcs_info_msg_0_})%0(?..%F{magenta} [%?])%f%b) %# '
#RPROMPT='%#'

