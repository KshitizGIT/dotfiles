## Dotfiles

Personal dotfiles for configuring neovim, tmux, and zsh.

Prerequisites: git, zsh, neovim, tmux

Install (run these from the repository root):

mkdir -p ~/.config/nvim ~/.config/tmux
ln -sfn "$(pwd)/neovim" ~/.config/nvim
ln -sfn "$(pwd)/tmux/tmux.conf" ~/.config/tmux/tmux.conf
ln -sfn "$(pwd)/.zshrc" ~/.zshrc

Notes: Adjust the paths above if you keep this repo in a different location. The -sfn options replace existing links safely; review your current configs before running.
