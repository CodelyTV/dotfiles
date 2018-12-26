# Load Path
export PATH=$HOME/dev/work/codelytv/bootstraps/dotfiles/bin:$PATH

# Load aliases

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Load functions

if [ -f ~/.functions ]; then
  . ~/.functions
fi