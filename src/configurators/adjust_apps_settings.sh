#!/usr/bin/env bash

if [[ "yes" != "$ADJUST_APPS_SETTINGS" ]]; then
    exit 0
fi

###############################################################################
# 🤝 Transmission
###############################################################################

mkdir $HOME/Downloads/torrents
mkdir $HOME/Downloads/torrents/tmp

defaults write org.m0k.transmission DeleteOriginalTorrent -bool true
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false
defaults write org.m0k.transmission CheckRemoveDownloading -bool true
defaults write org.m0k.transmission DownloadChoice -string 'Constant'
defaults write org.m0k.transmission DownloadFolder -string '$HOME/Downloads/torrents'
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string '$HOME/Downloads/torrents/tmp'
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false
defaults write org.m0k.transmission RandomPort -bool true

###############################################################################
# ✨ iStats (WIP)
###############################################################################

###############################################################################
# 👨‍💻 VSCode (WIP)
###############################################################################

###############################################################################
# ☕ IntelliJ (WIP)
###############################################################################

###############################################################################
# ☕ Paragon NTFS (WIP)
###############################################################################