# TMUX Config

Based on [Dreams of Code's video](https://www.youtube.com/watch?v=DzNmUNvnB04)

## Setup

1. Install tmux (apt, pacman, etc)

2. Install tpm
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

3. Clone this repo into tmux config location
```bash
git clone https://github.com/TimLanzi/tmux ~/.config/tmux

```

(optional) 4. If already in a tmux session, source the new tmux config file
```bash
tmux source ~/.config/tmux/tmux.conf

```
