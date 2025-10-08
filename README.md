# dankuri dotfiles

## Dependencies

Install using preferred package manager:

- [git](https://git-scm.com/)
- [stow](https://www.gnu.org/software/stow/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- [fd](https://github.com/sharkdp/fd)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [starship](https://github.com/starship/starship)

## Installation

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
- [fish](https://github.com/fish-shell/fish-shell)
- [ghostty](https://github.com/ghostty-org/ghostty)
- [doom emacs](https://github.com/doomemacs/doomemacs)
- [zsh (zinit)](https://github.com/zdharma-continuum/zinit) + [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [wezterm](https://github.com/wez/wezterm)
