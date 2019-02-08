# 🚀 CodelyTV dotfiles

<img src="http://codely.tv/wp-content/uploads/2016/05/cropped-logo-codelyTV.png" align="left" width="192px" height="192px"/>
<img align="left" width="0" height="192px" hspace="10"/>

> 🐢   💨 Speedup your MacOS setup with this fine tuning settings

[![CodelyTV](https://img.shields.io/badge/codely-tv-green.svg?style=flat-square)](codely.tv)
[![License](https://img.shields.io/github/license/CodelyTV/scala-http-api.svg?style=flat-square)](LICENSE)

Repository containing all the automations required to setup your MacOS in just a few seconds after a fresh install.

Feel free to explore the repository and get anything you need 😬

## 📜 Table of Contents

* [☝️ Instructions](#-instructions)
* [✍️ Repository Contents](#-repository-contents)
    * [💻 Shell dotfiles](#-shell-dotfiles)
    * [🐙 Git dotfiles](#-git-dotfiles)
    * [⚡ Custom commands](#-custom-commands)
    * [📱 Other apps dotfiles](#-other-apps-dotfiles-and-settings)
    * [🤖 Shell scripts](#-shell-scripts)
        * [🍎 `install_macos_apps.sh`](#-install_macos_appssh))
        * [🎛️ `adjust_macos_settings.sh`](#-adjust_macos_settingssh))
            * [🤔 How to discover new domains and settings](#-how-to-discover-new-domains-and-settings)
            * [🏃‍♂️ How to automate settings changes](#-how-to-automate-settings-changes)
* [ℹ️ About](#-about)
* [🤝 Contributing](#-contributing)
    * [☑️ ToDo suggestions](#-todo-suggestions)
* [⚖️ License](#-license)

## ☝️ Instructions

1. Read the "✍️ Contents" section of this readme in order to grasp which kind of settings and tools could be useful for you
2. Clone this repository: `git clone https://github.com/CodelyTV/dotfiles.git codelytv_dotfiles`
2. Move to the project root directory: `cd codelytv_dotfiles`
3. Modify the scripts and dotfiles in order to suite your needs
4. Execute the scripts from the terminal:
    * `.install_macos_apps.sh`
    * `.adjust_macos_settings.sh`
5. Copy or create the symbolic links to the dotfiles you're interested in as shown in the "✍️ Contents" section

## ✍️ Repository Contents

You'll find some self-explanatory files in this repo containing comments on what they do, however, here you have a brief explanation of each on of them.

### 💻 Shell dotfiles

* [`.aliases`](files/bash/.aliases): Common command aliases in order to save some characters 😬
* [`.bashrc`](.bashrc): Main config for Bash shell (loads common `.profile`)
* [`.functions`](files/bash/.functions): Common shell functions (key difference from `.aliases`: functions will receive an argument)
* [`.profile`](.profile): Common profile between the different shells in order to have all the functionalities in both of them. This file loads `.aliases` and `.functions`
* [`.zshrc`](files/zsh/.zshrc): Main config for ZSH shell (loads common `.profile`)

### 🐙 Git dotfiles

* [`.gitconfig`](files/git/.gitconfig): Different settings for the Git CSV system such as including the following file 
* [`.gitignore_global`](files/git/.gitignore_global): Ignore rules to apply to every single repository (usefull to do not mess up the project `.gitignore` file with particularities of your development environment such as the `.DS_Store` files or your IDE settings)

### ⚡ Custom commands

These are custom commands defined in [binary files](bin) with little scripts to boost your productivity in your daily basis tasks:

These binaries are installed thanks to adding [the binary files directory](bin) to the `PATH` environment variable in the  [`.profile`](.profile) file. 

* [`bin/docker_connect`](bin/docker_connect): Lists your running containers and let you select and open an interactive terminal in one of them 

### 📱 Other apps dotfiles and settings

Copy and paste the settings you want, create the symbolic links as described in each case, or follow the instructions to edit them:

* [Visual Studio Code](files/vscode/.vscode_settings.json):
    * Symlink: `$ ln -s paht_to_this_repo_clone/.vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json`
* JetBrains family IDEs (IntelliJ IDEA, PhpStorm, PyCharm, etc.):
    * [Custom VM Options](IntelliJ IDEA.app.vmoptions)
        1. Open the IDE
        2. Go to `Help -> Edit Custom VM Options…` menu option
        3. Paste the desired JVM properties modifying them based on your environment resources
* [iStat Menus](files/mac_apps/iStat Menus Settings.ismp)
    1. Modify the `license` XML key dictionary values specifying your email and serial
    2. Open iStats
    3. Go to `File -> Import settings…` menu option

### 🤖 Shell scripts

#### 🍎 [`install_macos_apps.sh`](install_macos_apps.sh)

This script will install [Homebrew](https://brew.sh/). It's a package manager for MacOS, used to install some tools like `htop`, `ffmpeg`, `git`, `php`… you get the idea, Command Line Tools, programming languages, and so on. 

Homebrew also includes [Homebrew Cask](http://caskroom.io/). It's a package manager useful to install fully functional OS X applications such as `google-chrome`, `spotify`, `slack`…

With these 2 command line tools, we'll be able to install and upgrade our apps without having to leave the terminal. This allow us to automate the whole setup process while starting clean on a new mac, and also to do not have to open all the different apps we've installed in order to update them.

You can [check out the `install_macos_apps.sh` script](install_macos_apps.sh) in order to see the detailed list of the apps it will install, and modify it based on your needs, and [the available packages in Homebrew](https://formulae.brew.sh/formula/) and [Homebrew Cask apps](https://github.com/Homebrew/homebrew-cask/tree/master/Casks).

#### 🎛️ [`adjust_macos_settings.sh`](adjust_macos_settings.sh)

This script will modify system preferences. We would recommend you to [take a look at the `adjust_macos_settings.sh` script](adjust_macos_settings.sh) in order to know the actual list of aspects it will modify. Here you have a brief list of them:

* Dock: Automatically hide the dock with a fewer delay and animation times
* Mission Control: Add Hot corners behaviour and reduce the animation time
* Keyboard: Reduce the delay for repeating a key while pressed, and the time between repetitions of that key
* Mouse: Increase its speed
* Trackpad: Enable tap to click for the current user and for the login screen. (Don't have to press down on the trackpad -- just tap it.)
* Finder: Disable animations + show extensions + set columns as default view + show pathbar + enable [spring-loading directories](https://www.youtube.com/watch?v=F9kdAxGe9SE)…
* Safari & WebKit: Allow hitting the Backspace key to go to the previous page + show full URL + disable automatic spelling corrections…
* Others: Disable the sound effects on boot + always show scrollbars + disable automatic capitalization + Avoid creating .DS_Store files on network or USB volumes + Maximize windows with `Ctrl+alt+Cmd+f`…

##### 🤔 How to discover new domains and settings

You can explore your current settings on all the different applications just with a few commands:

* List all config domains you have: `defaults domains | tr ',' '\n'`
* List the current settings for a specific domain: `defaults read com.apple.finder`
* Read the type of the setting you want to modify: `defaults read-type com.apple.finder NewWindowTargetPath`
* Write your new value for the setting: `write com.apple.finder NewWindowTargetPath "file:///Users/your-username/"`

##### 🏃‍♂️ How to automate settings changes 

The problem with the previous approach is that it could be a little verbose while showing you aaaaall the different settings an application has. So here's a quick tip on how to optimize the process for these settings which can be adjusted using the UI:

* Save the output of your current settings into a file: `defaults read > defaults_before_ui_changes.json`
    * Pro tip: If you already know the domain of the settings you're going to modify, optimize the size of the output specifying so: `defaults read com.apple.finder > finder_defaults_before_ui_changes.json`
* Modify the settings through the UI
* Save the output of the modified settings: `defaults read > defaults_after_ui_changes.json`
    * Alternativelly: `defaults read com.apple.finder > finder_defaults_after_ui_changes.json`
* Compare the `before` and `after` files to see what settings has been modified: `diff defaults_before_ui_changes.json defaults_after_ui_changes.json`
    * Alternativelly: `diff finder_defaults_before_ui_changes finder_defaults_after_ui_changes.json`
* Save the modified keys and construct your `write` commands in order to automate it the next time. For instance: `write com.apple.finder NewWindowTargetPath "file:///Users/your-username/"`

## ℹ️ About

This hopefully helpful repository has been developed by [CodelyTV](https://github.com/CodelyTV) and [contributors](https://github.com/CodelyTV/dotfiles/graphs/contributors).

We've used a lot of different sources to get some inspirations on the things to do, here you have a list of them:

* https://hackernoon.com/personal-macos-workspace-setup-adf61869cd79
* https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
* https://github.com/alexramirez/mac-setup
* https://github.com/alrra/dotfiles
* https://github.com/boochtek/mac_config/blob/master/trackpad.sh
* https://github.com/dstroot/.osx
* https://github.com/mathiasbynens/dotfiles/blob/master/.macos
* https://github.com/MoOx/setup
* https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh
* https://github.com/rgomezcasas/dotfiles
* https://github.com/sindresorhus/quick-look-plugins

## 🤝 Contributing

It would be awesome to learn from your experience automating the setup of your environment.
 
So please, feel free to send us your tips and tricks via Twitter ([@CodelyTV](https://twitter.com/CodelyTV)), or consider [opening an issue](https://github.com/CodelyTV/dotfiles/issues) before starting to work on a Pull Request 🙂

### ☑️ ToDo suggestions

Here you have some task we have in mind in case you don't have other features ideas but the willing to contribute 🤟
 
* [ ] Avoid hardcoding paths or custom values
    * We should try to modify this asking the user while installing the dotfiles, however, in the meantime here you have a list of the hardcoded references to directories to let you easily modify them:
    * [`.profile`#L2](files/bash/.profile#L2)
* [ ] Bash script for clean installations execution
    * Right now we're telling users to clone this repo and then execute the scripts
    * This has a problem: If the user has a clean MacOS install, s/he will not have Git
    * We should add a little `installer.sh` script which can install git, clone the repo, and ask the user for which this s/he wants to execute
    * As a following feature, this script could:
        * Ask the user for the hardcoded values such as config paths and so on
        * Read the Brew packages to install from a non versioned `.packages_to_install.yml` file in order to let the user customize them based on a `.packages_to_install.yml.dist`
        * Ask the user for which specific configuration s/he wants to execute from the `.adjust_macos_settings.sh` (in fact, we should start to split this file… 😅) 


## ⚖️ License

The MIT License (MIT). Please see [License](LICENSE) for more information.
