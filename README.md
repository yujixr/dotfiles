# dotfiles

## Install

``` bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yujixr/dotfiles/master/install.sh)"
```

## Update

``` bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yujixr/dotfiles/master/update.sh)"
```

## Other configs

``` bash
GITHUB_TOKEN="Type your token here"
echo -e "machine github.com\\nlogin yujixr\\npassword $GITHUB_TOKEN" > $HOME/.netrc
chsh -s $(which zsh)
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
chmod 600 $HOME/.ssh/id_*
```

### Firefox Add-ons

- [Nano Defender](https://addons.mozilla.org/firefox/addon/nano-defender-firefox/)
- [uBlock Origin](https://addons.mozilla.org/firefox/addon/ublock-origin/)
- [Bitwarden](https://addons.mozilla.org/firefox/addon/bitwarden-password-manager/)

[Install samurai-filter](https://subscribe.adblockplus.org/?location=https://raw.githubusercontent.com/yujixr/samurai-filter/master/list.txt&title=samurai-filter)
