# Install packages
# Asunder: Set HTTP Proxy to `freedbtest.dyndns.org` and set port 80.
sudo pacman -S yay
yay -S alacritty starship gvim tmux exa bat hexyl docker qemu virt-manager cloudflare-wrangler visual-studio-code-bin quartus-free fcitx-mozc fcitx-im kcm-fcitx dropbox nextdns keepassxc veracrypt nmap balena-etcher makemkv asunder sane minecraft-launcher nerd-fonts-jetbrains-mono nerd-fonts-fira-code libz3

# Change default shell
chsh -s $(which zsh)

# allow non-root user to use docker
sudo gpasswd -a $USER docker

# Start services automatically
sudo systemctl enable docker libvirtd

# Set permission for ssh keys
chmod 600 $HOME/.ssh/id_*
