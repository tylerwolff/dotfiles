# 🍒 dotfiles

To set up locally, run the symlink script.

```
./symlink-setup.sh
```

In addition, install [brew](https://brew.sh) and run the installation scripts.

```
./brew.sh
```

### Other setup

- [Generate a new SSH key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- Install Terminal theme: Ocean Dark - https://github.com/mdo/ocean-terminal
- Install [Volta](https://volta.sh/)
- Install git-up `gem install git-up` for awesome git updates
- Configure [editor](./atom.md)
- Add dock spacers

```
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock
```
