# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# automatic zinit installation
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

# install powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# plugins
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# snippets
zinit snippet OMZP::git
# zinit snippet OMZP::docker
# zinit snippet OMZP::docker-compose
zinit snippet OMZP::kubectl
zinit snippet OMZP::terraform

# load completions
autoload -Uz compinit && compinit

# fzf-tab should be loaded after compinit
zinit light Aloxaf/fzf-tab

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# edit cmd in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line

# keybindings - yeah it's emacs, now what?
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completion styling
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:z:*' fzf-preview 'ls --color $realpath'

# aliases
alias dps="docker ps"
alias dco="docker compose"
alias cr="clear"
alias e="exit"
alias ls="eza"
alias la="eza -la"
alias ll="eza -l"
alias grpo="git remote prune origin"
alias lg="lazygit"
alias kctx="kubectx"
alias kns="kubens"
alias ..="cd .."
alias ...="cd ../.."

# ssh aliases
[ -f ~/.ssh_alias ] && source ~/.ssh_alias

# env vars
export FZF_DEFAULT_OPTS="--bind='ctrl-y:accept'"
export EDITOR="nvim"
export VISUAL="nvim"
# export GOPATH=$HOME/go
# export PATH="$PATH:${GOPATH}/bin"
# export ERL_AFLAGS="-kernel shell_history enabled"
# export PATH="/home/dankuri/.turso:$PATH"
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"
# export PRETTIERD_DEFAULT_CONFIG="~/.config/prettier/.prettierrc.json"

# shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"
