# Initialize zim in background
(
  local dir file
  setopt LOCAL_OPTIONS EXTENDED_GLOB
  autoload -U zrecompile

  # zcompile the completion cache; siginificant speedup
  zrecompile -pq ${ZDOTDIR:-${HOME}}/${zcompdump_file:-.zcompdump}

  # zcompile .zshrc
  zrecompile -pq ${ZDOTDIR:-${HOME}}/.zshrc

  # zcompile enabled module autoloaded functions
  for dir in ${ZIM_HOME}/modules/${^zmodules}/functions(/FN); do
    zrecompile -pq ${dir}.zwc ${dir}/^(_*|prompt_*_setup|*.*)(-.N)
  done

  # zcompile enabled module scripts
  for file in ${ZIM_HOME}/modules/${^zmodules}/(^*test*/)#*.zsh{,-theme}(.NLk+1); do
    zrecompile -pq ${file}
  done

  # zcompile all prompt setup scripts
  for file in ${ZIM_HOME}/modules/prompt/functions/prompt_*_setup; do
    zrecompile -pq ${file}
  done

  for file in $DOTFILES_PATH/terminal/zsh/**/*; do
    if [[ -f $file ]]; then
      zrecompile -pq ${file}
    fi
  done

  for file in $DOTFILES_PATH/terminal/zsh/**/.*; do
    if [[ -f $file ]]; then
      zrecompile -pq ${file}
    fi
  done
) &!
