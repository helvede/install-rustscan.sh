#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Install Rustscan
cargo install rustscan

# Verify the installation
rustscan --version
