#!/bin/user/env bash

install_macos_custom() {
  # Install brew if not installed
  if ! [ -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  # All apps (This line is repeated because there are dependencies between brew cask and brew)
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile" || true
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile"

  # Correct paths (so, we handle all with $PATH)
  sudo truncate -s 0 /etc/paths

  # Custom macOS "defaults"
  sh "$DOTFILES_PATH/mac/configs/transmission.sh"
  sh "$DOTFILES_PATH/mac/configs/mac-os.sh $@"
}

install_linux_custom() {
  echo
}
