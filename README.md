# 🍒 dotfiles

Switch shell to bash
```
chsh -s /bin/bash
```

Run the symlink script.

```
./symlink-setup.sh
```

### Other setup

- [Generate a new SSH key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- Install Terminal theme: [Ocean Dark](https://github.com/mdo/ocean-terminal)
- Install Iterm theme: [Dracula](https://draculatheme.com/iterm)
- Install [SF Mono](https://developer.apple.com/fonts/)
- Install [Volta](https://volta.sh/) node manager
- install [brew](https://brew.sh) and run the installation script `./brew.sh`

### Extras
- Add dock spacers
```
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock
```
