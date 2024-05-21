#!/bin/bash

# System update
echo "Updating system..."
sudo apt-get update && sudo apt-get upgrade -y

# Clearing Firefox browser cache, if it is installed
if [ -d "$HOME/.mozilla/" ]; then
    echo "Clearing Firefox cache..."
    rm -rf $HOME/.cache/mozilla/firefox/*.default-release/cache2/entries
else
    echo "Firefox is not installed."
fi

# Clearing Chrome browser cache, if it is installed
if [ -d "$HOME/.config/google-chrome/" ]; then
    echo "Clearing Chrome cache..."
    rm -rf $HOME/.cache/google-chrome/Default/Cache/*
else
    echo "Chrome is not installed."
fi

# Deleting temporary files
echo "Deleting temporary files..."
rm -rf /tmp/*

echo "Done!"
