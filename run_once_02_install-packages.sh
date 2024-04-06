#!/bin/bash

# Install Rust
if ! type rustup > /dev/null 2>&1; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# Install mise dependencies
if type mise > /dev/null 2>&1; then
  mise install
fi

# Install `gh` plugins
if type gh > /dev/null 2>&1; then
  gh extension install dlvhdr/gh-dash
  gh extension install seachicken/gh-poi
  gh extension install mislav/gh-branch
fi

exit 0
