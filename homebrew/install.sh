#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test $(which brew)
then
  # Update brew
  brew update

  # Install homebrew packages
  brew install grc coreutils spark direnv
else
  # echo "  x You should probably install Homebrew first:"
  # echo "    https://github.com/mxcl/homebrew/wiki/installation"
  echo "Homebrew not installed, not updating"
fi

exit 0