# Install packages
# Asunder: Set HTTP Proxy to `freedbtest.dyndns.org` and set port 80.
sudo pacman -S yay
yay -S alacritty starship gvim tmux exa bat hexyl docker qemu virt-manager llvm clang-tools-extra cloudflare-wrangler visual-studio-code-bin fcitx-mozc fcitx-im kcm-fcitx dropbox veracrypt balena-etcher asunder sane typora ttf-fira-code nerd-fonts-fira-code

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install VSCode extensions
code --install-extension ms-vscode-remote.vscode-remote-extensionpack

# Install BlackArch
sudo curl https://blackarch.org/strap.sh | sudo sh

# Change default shell
chsh -s $(which zsh)

# allow non-root user to use docker
sudo gpasswd -a $USER docker

# Start services automatically
sudo systemctl enable docker libvirtd

# Set permission for ssh keys
chmod 600 $HOME/.ssh/id_*
