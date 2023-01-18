!#/bin/bash
#define variable
FISH_CONFIG_FILE=~/.config/fish/config.fish
RUST_BIN=~/.cargo/bin
RUST_ENV=~/.cargo.env

#update && upgrade
sudo dnf update && sudo dnf upgrade -y

#install rust
curl "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"

#install fish
sudo dnf install fish

#Change default shell to fish
chsh -s /bin/fish -y

#install starship
curl -sS https://starship.rs/install.sh | sh

#snap store
sudo dnf install snapd
snap refresh
sudo ln -s /var/lib/snapd/snap /snap

#node
sudo snap install node --classic 

#run content in config.fish in repo here