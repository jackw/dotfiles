#!/usr/bin/env bash

# Install Homebrew (if not installed)
if test ! $(which brew)
then
  echo "Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install and setup Mongodb
brew tap mongodb/brew
brew install mongodb-community
sudo mkdir -p /data/db
sudo chown -R `id -un` /data/db

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

brew install gmp
brew install grep
#brew install node

# Install useful binaries.
brew install ack
brew install autojump
brew install ffmpeg
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install p7zip
brew install pigz
brew install pv
brew install rsync
brew install rename
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install youtube-dl

# Installs Casks
brew tap caskroom/cask

## Apps I use
brew cask install 1password
brew cask install alfred
brew cask install beamer
brew cask install dash
brew cask install dropbox
brew cask install firefox # Firefox
brew cask install homebrew/cask-versions/firefox-nightly # Nightly
brew cask install google-chrome #Chrome
brew cask install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew cask install grammarly
brew cask install iterm2
brew cask install kap
brew cask install keycastr
brew cask install marked
brew cask install messenger
brew cask install mongodb-compass
brew cask install moom
brew cask install mplayerx
brew cask install notion
brew cask install obs
brew cask install odrive
brew cask install postman
brew cask install sketch
brew cask install skitch
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install telegram
brew cask install textexpander
brew cask install tower
brew cask install visual-studio-code
brew cask install wechat
brew cask install whatsapp

# Remove outdated versions from the cellar.
brew cleanup
