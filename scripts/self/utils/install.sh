#!/bin/user/env bash

install_macos_custom() {
  echo "Installing Command Line Developer Tools if not installed"
  xcode-select --install > /dev/null 2>&1
  if [ 0 == $? ]; do
    sleep 1
    osascript <<EOD
tell application "System Events"
  tell process "Install Command Line Developer Tools"
    keystroke return
    click button "Agree" of window "License Agreement"
  end tell
end tell
EOD
  else
    echo "Command Line Developer Tools are already installed!"
  fi

  until [ "$(xcode-select --install > /dev/null 2>&1)" ]; do
    echo -n "."
    sleep 1
  done

  echo "Installing brew if not installed"
  if ! [ -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  echo "Installing brew apps"
  # All apps (This line is repeated because there are dependencies between brew cask and brew)
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile" || true

  echo "Installing brew apps again because it might fail the first time because of dependencies."
  echo "Check in MacOS Security & Privacy settings if MacOS is not allowing to install any third party software"
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile"

  echo "Fixing paths (so, we handle all with \$PATH)"
  sudo truncate -s 0 /etc/paths

  echo "Applying custom MacOS defaults"
  sh "$DOTFILES_PATH/mac/configs/transmission.sh"
  sh "$DOTFILES_PATH/mac/configs/mac-os.sh" "$1"
}

install_linux_custom() {
  echo "Linux support not added yet."
}
