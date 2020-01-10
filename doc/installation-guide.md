# Installation Guide

## Legacy computer

Copy from the previous computer before The Shutdown™:

* Data not included in this repo:
  * `~/Library/Fonts`
  * `~/.ssh`
  * `~/Code`
* Slack workspaces list
* Licenses:
  * Caret (CanePass)
  * Contexts (CanePass)
  * iStat Menus: Open and go to File > Export Settings…
  * Rocket (CanePass)
  * Paragon NTFS

## New computer

* Log in iCloud and Sync all Keychain passwords
* Update MacOS
* Paste the directories with data not included in this repo
* `chmod -R 700 ~/.ssh`
* Execute the dotfiles installer:
  * `bash <(curl -s https://raw.githubusercontent.com/codelytv/dotfiles/master/installer)`
  * If any dialog appears regarding to not being able to install something, check in "System Preferences… > Security & Privacy" if you have to manually approve it.
  * If there's any error and you want to execute again the cloned dotfiles:
     1. `export DOTFILES_PATH="$HOME/.dotfiles"`
     2. `.dotfiles/bin/dot" self install` 
* Give permission to Finder Quick Look plugins
  * `open ~/Library/Quicklook/QLStephen.qlgenerator/Contents/MacOS/QLStephen`
  * Go to Security settings and allow it
* Open Dropbox
  * Login
  * Open settings:
    * Import:
      * Disable camera uploads
    * Sync:
      * Choose folders to Sync => Disable unnecessary folders
  * Wait until syncing the 1Password Vault
* Open 1Password
  * Sync with Dropbox
  * Choose File > ~/Dropbox/Apps/1Password/1Password.opvault
  * Main app menu > Install Browser Extensions…
* Open JetBrains Toolbox
  * Login
  * Enable "Update all tools automatically"
  * Enable "Keep only the latest version"
  * Enable "generate shell scripts in ~/bin"
  * Install IntelliJ
* Open IntelliJ
  * Import IntelliJ IDEA Settings From… > JetBrains Account
  * Click on sync settings and select "Sync Plugins Silently"
  * Execute `dot intellij add_code_templates`
  * Restart IDE
  * Preferences > Editor > Color Scheme > CTV - Gruvbox Dark
* Open Google Chrome
  * Login to the personal profile and sync
  * Add the work profile and sync
  * Authenticate all the extensions
  * For each profile: Go to History > Show Full History > Tabs from other devices > Open All
* Open Google Backup and Sync
  * Disable "USB Devices & SD Cards"
  * Open the settings and configure them as follow:
    * My Computer:
      * Disable the backup of any folder
      * Google Drive: Always remove both copies
      * Google Photos: Disable the upload of newly added photos
    * Google Drive:
      * Enable selective sync from Google Drive to the computer
    * Settings:
      * Disable "Show warning when you remove…"
* Open Magnet
  * Give permissions
  * Check Launch at login
  * Open Preferences and remove shortcuts for corner, third, and center positions
* Open Rocket
  * Give permissions
  * Preferences > General
    * Start Rocket at Login
    * Trigger key: §
    * Remove all app exceptions
  * Preferences > Advanced
    * Remove all website exceptions
  * Configure license
    * Type anywhere something like "§blablabla"
    * Browse all emoji…
    * Enter activation number
* Open Spotify
  * Set streaming quality to very high
  * Disable automatic startup
* Open Authy and login
* Install Caret Beta
  * [Manually download and install](https://caret.io/releases) ([it isn't popular enough to be be included in Brew](https://github.com/Homebrew/homebrew*cask*versions/pull/8392))
  * Rollback the changes done to the `editors/caret/Preferences` while installing it
* Install software licenses
  * Contexts
  * [`mac/iStat/iStat Menus Settings.ismp`](../mac/iStat/iStat Menus Settings.ismp) (license key)
  * Rocket
* Open Contexts
  * Grant permissions
  * Configure as other pc
    * Apparence
      * Vibrant Dar
      * Text Size: Large
    * Sidebar
      * No display
    * Panel
      * Disable Moving the cursor
      * Disable Scroll
* Open Slack
  * Login to the same workspaces
* Open iTerm
  * Select load preferences from URL and use ~/.dotfiles/mac/iTerm. On the next prompt select "NOT copy"
* Restart
* Execute `dot shell zsh reload_completions` and then `compinit`
