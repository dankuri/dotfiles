# dankuri dotfiles

You will need to install `git` and `stow`.
## Installation:
```bash
git clone git@github.com:tmux-plugins/tpm ~/.tmux/plugins/tpm # install tmux plugin manager
git clone git@github.com:dankuri/dotfiles.git .dotfiles
cd .dotfiles
git submodule update --init --recursive # to get submodule for nvim config
stow .
```

To setup tmux - run `tmux` and press `Ctrl + A` (prefix) and `Shift + I`  
To setup nvim - check [the repo](https://github.com/dankuri/nvims)

## Included configs
- [neovim](https://github.com/neovim/neovim)
- [tmux](https://github.com/tmux/tmux)
- [wezterm](https://github.com/wez/wezterm)
- [zsh (oh-my-zsh)](https://github.com/ohmyzsh/ohmyzsh/)
