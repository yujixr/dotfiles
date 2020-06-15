# dotfiles

## Install

``` bash
curl https://yuji.ne.jp/install.sh | bash
```

## Update

``` bash
curl https://yuji.ne.jp/update.sh | bash
```

## Other configs

``` bash
sudo gpasswd -a $USER docker
chsh -s $(which zsh)
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
chmod 600 $HOME/.ssh/id_*
```

### Inhibit idle while fullscreen

``` bash
for con_id in `swaymsg -t get_tree | jq -r '..|tty select(.fullscreen_mode == 1)|.id'`; do
  swaymsg "[con_id=$con_id]" inhibit_idle fullscreen
done
```

### Firefox Add-ons

- [Bitwarden](https://addons.mozilla.org/firefox/addon/bitwarden-password-manager/)
- [Nano Adblocker](https://addons.mozilla.org/firefox/addon/nano-adblocker-firefox/)
- [Nano Defender](https://addons.mozilla.org/firefox/addon/nano-defender-firefox/)
- [HTTPS Everywhere](https://addons.mozilla.org/firefox/addon/https-everywhere/)
- [Privacy Badger](https://addons.mozilla.org/firefox/addon/privacy-badger17/)

[Install samurai-filter](https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/yujixr/samurai-filter/master/list.txt&title=samurai-filter)
