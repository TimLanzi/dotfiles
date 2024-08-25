# Extend PATH
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH:/opt/nvim-linux64/bin

# Neovim
alias v=nvim
alias vim=nvim
alias vi=nvim
export VISUAL=nvim

# Tmux
alias t=tmux

# Obsidian
alias oo='cd $HOME/Documents/Obsidian\ Vault'
alias or='vim $HOME/Documents/Obsidian\ Vault/inbox/*.md'
# alias ou='cd $HOME/notion-obsidian-sync-zazencodes && node batchUpload.js --lastmod-days-window 5'

# Path shortcuts
alias nvc='cd $HOME/.config/nvim && vim'

# Zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/home/tlanzi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
