#!/usr/bin/env bash

# macOS
defaults write com.apple.dock "tilesize" -int "48"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "icnv"
defaults write com.apple.screencapture "disable-shadow" -bool "true"
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
killall Dock
killall Finder

# Zsh
rm "$HOME/.zprofile"
ln "config/zsh/.zprofile" "$HOME/.zprofile"
rm "$HOME/.zshrc"
ln "config/zsh/.zshrc" "$HOME/.zshrc"

# ghostty
mkdir "$HOME/Library/Application Support/com.mitchellh.ghostty"
rm "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
ln "config/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

# git
rm "$HOME/.gitconfig"
ln "config/git/.gitconfig" "$HOME/.gitconfig"
rm "$HOME/.gitignore"
ln "config/git/.gitignore" "$HOME/.gitignore"

# rectangle
defaults write com.knollsoft.Rectangle specified -dict-add keyCode -float 125 modifierFlags -float 1048576
defaults write com.knollsoft.Rectangle specifiedHeight -float 775
defaults write com.knollsoft.Rectangle specifiedWidth -float 1026

# sublime-text
mkdir "$HOME/Library/Application Support/Sublime Text/Packages/User"
rm "$HOME/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"
ln "config/sublime-text/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"

# zed
mkdir "$HOME/.config/zed"
rm "$HOME/.config/zed/settings.json"
ln "config/zed/settings.json" "$HOME/.config/zed/settings.json"
