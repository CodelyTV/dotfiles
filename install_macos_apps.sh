#!/usr/bin/env bash

###############################################################################
# Install brew and brew cask apps                                             #
###############################################################################

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Add older versions cask repository because of 1Password subscription based business model change from v6 to v7

brew tap homebrew/cask-versions

declare -a brew_cask_apps=(
  'java'
  'google-chrome'
  'the-unarchiver'
  'vlc'
  'spotify'
  'istat-menus'
  'rocket'
  'contexts'
  'paragon-ntfs'
  'noti'
  'caffeine'
  'bartender'
  'dropbox'
  'google-backup-and-sync'
  'slack'
  'whatsapp'
  'docker'
  'iterm2'
  'sourcetree'
  'jetbrains-toolbox'
  'sublime-text'
  'visual-studio-code'
  'sequel-pro'
  '1password6'
  'transmit'
  'transmission'
)

for app in "${brew_cask_apps[@]}"; do
  brew cask install "$app"
done

declare -a brew_cli_tools=(
  'htop'
  'youtube-dl'
  'ffmpeg'
  'tree'
  'parallel'
  'zsh'
  'zsh-syntax-highlighting'
  'zsh-autosuggestions'
  'autojump'
  'mas'
  'tldr'
  'git'
  'php'
  'sbt'
  'gradle'
)

for tool in "${brew_cli_tools[@]}"; do
  brew install "$tool"
done

###############################################################################
# Install Mac App Store apps                                                  #
###############################################################################

declare -a mas_apps=(
  '409183694' # Keynote
  '540348655' # Monosnap
  '1278508951' # Trello
  '441258766' # Magnet
  '408981434' # iMovie
  '715464874' # Disk Map
  '587512244' # Kaleidoscope
  '784801555' # OneNote
)

for app in "${mas_apps[@]}"; do
  mas install "$app"
done

###############################################################################
# Configure installed apps                                                    #
###############################################################################

# Set ZSH as the default shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Run the Paragon NTFS installer
open /usr/local/Caskroom/paragon-ntfs/15/FSInstaller.app

###############################################################################
# Install other apps (WIP)                                                    #
###############################################################################

# Fonts (WIP)
