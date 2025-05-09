#!/usr/bin/env bash

# Ghostty
mkdir "$HOME/Library/Application Support/com.mitchellh.ghostty"
rm "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
ln "config/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

# Git
rm "$HOME/.gitconfig"
ln "config/git/.gitconfig" "$HOME/.gitconfig"
rm "$HOME/.gitignore"
ln "config/git/.gitignore" "$HOME/.gitignore"

# Sublime Text
mkdir "$HOME/Library/Application Support/Sublime Text/Packages/User"
rm "$HOME/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"
ln "config/sublime-text/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"

# Zed
mkdir "$HOME/.config/zed"
rm "$HOME/.config/zed/settings.json"
ln "config/zed/settings.json" "$HOME/.config/zed/settings.json"

# Zsh
rm "$HOME/.zprofile"
ln "config/zsh/.zprofile" "$HOME/.zprofile"
rm "$HOME/.zshrc"
ln "config/zsh/.zshrc" "$HOME/.zshrc"

# Dock
defaults write com.apple.dock "tilesize" -int "48"
defaults write com.apple.dock "autohide-delay" -float "0"
killall Dock

# Rectangle
defaults write com.knollsoft.Rectangle almostMaximizeWidth -float 0.6
defaults write com.knollsoft.Rectangle almostMaximizeHeight -float 0.8
