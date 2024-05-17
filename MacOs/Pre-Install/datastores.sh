#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew, install if we don't have it
if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Function to install datastore apps
function installDataStores() {
  brew install mysql
  brew install postgresql
  brew install mongodb
  brew install redis
  brew install elasticsearch
}

# Ask if the user wants to install datastore apps
read -p "Database applications will now be installed. Do you want to proceed? (y/n): " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    installDataStores;
fi;

# Install MySQL Workbench
brew install --cask mysqlworkbench

# Remove outdated versions from the cellar.
brew cleanup --prune=all
