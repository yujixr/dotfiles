# dotfiles

## Install

``` bash
bash -c "$(curl -fsSL https://yuji.ne.jp/install.sh)"
```

## Update

``` bash
bash -c "$(curl -fsSL https://yuji.ne.jp/update.sh)"
```

## Other configs

``` bash
sudo gpasswd -a $USER docker
chsh -s $(which zsh)
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
chmod 600 $HOME/.ssh/id_*
```

### Firefox Add-ons

- [Bitwarden](https://addons.mozilla.org/firefox/addon/bitwarden-password-manager/)
- [Nano Adblocker](https://addons.mozilla.org/en-GB/firefox/addon/nano-adblocker-firefox/)
- [Nano Defender](https://addons.mozilla.org/firefox/addon/nano-defender-firefox/)

[Install samurai-filter](https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/yujixr/samurai-filter/master/list.txt&title=samurai-filter)
