#!/usr/bin/env bash

set -ux

if ! command -v "brew"; then
  echo "install homebew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew doctor
brew upgrade
brew bundle
brew cleanup
