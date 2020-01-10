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
* Install software licenses
  * Caret Beta ([Manually install]((https://caret.io/releases)) it because [it isn't popular enough to be be included in Brew](https://github.com/Homebrew/homebrew*cask*versions/pull/8392))
  * Contexts
  * [`mac/iStat/iStat Menus Settings.ismp`](../mac/iStat/iStat Menus Settings.ismp) (license key)
  * Rocket
* Open Authy and login
* Login in Google Chrome
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
* Go to `Preferences/General` and enable font smoothing (if retina display)
* Open JetBrains Toolbox and login
  * Login
  * Enable "generate shell scripts in ~/bin"
  * Install IntelliJ
* Open IntelliJ
  * Import from JetBrains account
  * Sync plugins
  * Execute `dot intellij add_code_templates`
* Open Slack
  * Login to the same workspaces
* Open Spotify
  * Set streaming quality to very high
  * Disable automatic startup
* Open iTerm
  * Select load preferences from URL and use ~/.dotfiles/mac/iTerm. On the next prompt select "NOT copy"
* Restart
* Execute `dot shell zsh reload_completions` and then `compinit`
