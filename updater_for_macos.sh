#!/usr/bin/env bash


START_DATE=$(date +"%d.%m.%Y | %H:%M:%S")
echo "--- Updater for macOS started at: $START_DATE ---"

echo
echo "- Updating \"macOS\" -"
softwareupdate --install --all

echo
echo "- Updating \"brew\" -"
brew update
brew upgrade
brew cleanup
brew cask cleanup

echo
echo "- Updating \"gem\" -"
gem update --system
gem update
gem cleanup



END_DATE=$(date +"%d.%m.%Y | %H:%M:%S")
echo
echo "--- Updater for macOS finished at: $END_DATE ---"
