DOTFILES_DIR="$HOME/.dotfiles"
CONFIGS_DIR="$DOTFILES_DIR/.config"
ZSH_CONFIG_DIR="$CONFIGS_DIR/zsh"

fpath=($CONFIGS_DIR/zsh/plugins $fpath)

# comments in interactive mode (useful for copypasting)
setopt INTERACTIVE_COMMENTS

# navigation
setopt AUTO_CD              # Go to folder path without using cd.

setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

# Use Git-like -N instead of the default +N (e.g. cd -2 as opposed to cd +2).
setopt PUSHDMINUS

# completion
# TAB⇥ to show a menu of all completion suggestions.
# TAB⇥ a second time to enter the menu.
# TAB⇥ again to circulate through the list, or use the arrow keys.
# ENTER to accept a completion from the menu.
setopt AUTO_MENU
setopt ALWAYS_TO_END  # Move the cursor to the end of the word after accepting a completion.

# history
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt INC_APPEND_HISTORY        # add commands to hist as soon as they are run
setopt SHARE_HISTORY             # Share history between all sessions.
setopt PROMPT_SUBST


autoload -Uz compinit
compinit


CONFIG_FILES=(
  aliases
  prompt_config
  plugins
  programs
  vimify
)
for config_file in "${CONFIG_FILES[@]}"; do
  file="$ZSH_CONFIG_DIR/$config_file.zsh"
  if [[ -f "$file" ]] ; then
    source "$file"
  else
    print "\033[1;33m$file not found\033[0m"
  fi
done
