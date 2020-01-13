# Uncomment for debuf with `zprof`
# zmodload zsh/zprof

export DOTFILES_PATH=$HOME/.dotfiles
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.dotfiles/modules/zimfw

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
# setopt autopushd

# Start zim
source ${ZIM_HOME}/init.zsh

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

source $DOTFILES_PATH/terminal/init.sh

fpath=("$DOTFILES_PATH/terminal/zsh/themes" "$DOTFILES_PATH/terminal/zsh/completions" $fpath)

autoload -Uz promptinit && promptinit
prompt codelytv

source $DOTFILES_PATH/terminal/zsh/key-bindings.zsh
