#!/bin/user/env bash

install_macos_custom() {
  echo "Installing Command Line Developer Tools if not installed"
  if ! [ -d /Library/Developer/CommandLineTools ]; then
    echo "🙏 Please, click on Install & Agree to accept the Command Line Developer Tools License Agreement"
    sleep 1
    xcode-select --install
    read -rp "👀 Press enter once the installation finishes" not_needed_param
  else
    echo "✅ Command Line Developer Tools are already installed!"
  fi

  echo "⚡️ Installing brew if not installed"
  if ! [ -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  echo "📦 Installing brew apps"
  # All apps (This line is repeated because there are dependencies between brew cask and brew)
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile" || true

  echo "😅 Installing brew apps again because it might fail the first time because of dependencies."
  echo "☝️ Check in MacOS Security & Privacy settings if MacOS is not allowing to install any third party software"
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile"

  echo "🧐 Fixing paths in order to handle all with \$PATH"
  sudo truncate -s 0 /etc/paths

  echo "🍎 Applying custom MacOS defaults"
  sh "$DOTFILES_PATH/mac/configs/transmission.sh"
  sh "$DOTFILES_PATH/mac/configs/mac-os.sh" "$1"
}

install_linux_custom() {
  echo "Linux support not added yet."
}
