#!/usr/bin/env bash

set -ux

echo "install homebew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew doctor

brew upgrade

brew bundle

brew cleanup
