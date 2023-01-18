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

#docker
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

sudo dnf -y install dnf-plugins-core

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

#node
sudo snap install node --classic 

#run content in config.fish in repo here