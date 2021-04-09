# Install packages
# Asunder: Set HTTP Proxy to `freedbtest.dyndns.org` and set port 80.
sudo pacman -S yay
sudo pacman -S alacritty starship gvim tmux exa bat hexyl htop docker qemu virt-manager fcitx-mozc fcitx-im fcitx-configtool keepassxc asunder libz3
yay -S jetbrains-toolbox visual-studio-code-bin quartus-free nerd-fonts-jetbrains-mono nerd-fonts-fira-code dropbox nextdns cloudflare-wrangler balena-etcher makemkv minecraft-launcher

# Change default shell
chsh -s $(which zsh)

# allow non-root user to use docker
sudo gpasswd -a $USER docker

# Start services automatically
sudo systemctl enable docker libvirtd

# Set permission for ssh keys
chmod 600 $HOME/.ssh/id_*
