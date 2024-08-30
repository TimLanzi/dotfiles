# dotfiles

## Shell
Install [ oh-my-posh ](https://ohmyposh.dev/docs/installation/linux)

```bash
curl -s https://ohmyposh.dev/install.sh | bash -s
```

## Configs
```bash
# Clone repo
git clone https://github.com/TimLanzi/dotfiles.git ~/dotfiles

# Install gnu stow (git is also a dependency)
sudo apt install stow git

# Run stow to symlink dotfiles
cd ~/dotfiles
stow .
```
