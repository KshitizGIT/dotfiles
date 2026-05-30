# Neovim Lua Configuration

A modular, feature-rich Neovim configuration written in Lua, powered by [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager. Designed for modern workflows with fast startup, convenient navigation, and enhanced coding experience.

---

## ✨ Features
- **Plugin Management:** [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Fuzzy Search:** [Telescope](https://github.com/nvim-telescope/telescope.nvim) with FZF Native
- **Statusline:** [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- **File Explorer:** [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- **Syntax Highlighting & Parsing:** [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Seamless tmux Integration:** [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- **Git Integration:** [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim), [vim-fugitive](https://github.com/tpope/vim-fugitive)
- **LSP Support & Completion:** Comprehensive LSP setup, autocompletion and AI/code suggestions (see plugins folder)
- **Code Formatting & Surround:** Custom operators, auto-pairs, and formatter
- **WhichKey & UI Improvements:** Discover keybindings with [which-key.nvim](https://github.com/folke/which-key.nvim), icons with `nvim-web-devicons`
- **Support for Nerd Fonts**
- More: See [`lua/plugins/`](lua/plugins/) for full list

---

## 📦 Requirements
- Neovim 0.9+
- [Nerd Font](https://www.nerdfonts.com/) (optional but highly recommended for icons)
- `git`, [make](https://www.gnu.org/software/make/) (for some plugin builds)

---

## 🚀 Installation
1. **Backup your old config:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim_backup
   ```
2. **Clone this repo:**
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```
3. **(Optional) Install a Nerd Font** and select it in your terminal.
4. **Launch Neovim:**
   ```bash
   nvim
   ```
   Plugins will be installed automatically via `lazy.nvim`.

---

## 🛠️ Configuration Overview
- **Entry point:** [`init.lua`](init.lua)
- **Modular settings:** Options, keymaps, autocommands, and plugin specs live in `lua/` submodules
- **All plugins in** [`lua/plugins/`](lua/plugins/)
- Customize or add plugins by editing files or adding new ones to `lua/plugins/`

---

## 🤝 Credits
- [Neovim](https://neovim.io/)
- [lazy.nvim](https://github.com/folke/lazy.nvim) by Folke
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) & all open-source plugin authors

---

## 📖 License
See [LICENSE.md](LICENSE.md)

---

PRs, suggestions & improvements welcome!
