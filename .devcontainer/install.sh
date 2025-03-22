#! /usr/bin/bash

echo
echo "---------------------"
echo "starts install script"
echo "---------------------"
echo

sudo apt update && sudo apt -y upgrade

sudo apt-get install -y software-properties-common
sudo apt update

sudo add-apt-repository -y ppa:maveonair/helix-editor
sudo apt update

sudo apt install helix
cargo install bacon
cargo install trunk
cargo install cargo-leptos

rustup component add rust-analyzer
npm i -g vscode-langservers-extracted
rustup target add wasm32-unknown-unknown

echo
echo "---------------------"
echo "install script ends"
echo "---------------------"
echo
