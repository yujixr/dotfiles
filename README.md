# dotfiles

## Install

``` bash
curl https://yuji.ne.jp/install.sh | sh
```

## Update

``` bash
curl https://yuji.ne.jp/update.sh | sh
```

## Other configs

``` bash
sudo pacman -S yay
yay -S alacritty gvim docker hugo llvm clang-tools-extra visual-studio-code-bin fcitx-mozc fcitx-im kcm-fcitx veracrypt balena-etcher asunder typora
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install wrangler
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
sudo gpasswd -a $USER docker
chsh -s $(which zsh)
chmod 600 $HOME/.ssh/id_*
```

### Asunder config

Set HTTP Proxy to `freedbtest.dyndns.org` and set port 80

### Firefox Add-ons

- [Bitwarden](https://addons.mozilla.org/firefox/addon/bitwarden-password-manager/)
- [Nano Adblocker](https://addons.mozilla.org/firefox/addon/nano-adblocker-firefox/)
- [Nano Defender](https://addons.mozilla.org/firefox/addon/nano-defender-firefox/)
- [HTTPS Everywhere](https://addons.mozilla.org/firefox/addon/https-everywhere/)
- [Privacy Badger](https://addons.mozilla.org/firefox/addon/privacy-badger17/)

[Install samurai-filter](https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/yujixr/samurai-filter/master/list.txt&title=samurai-filter)
