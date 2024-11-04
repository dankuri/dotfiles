set -gx EDITOR nvim
set -gx VISUAL nvim
set -x GOPATH $HOME/.go
set -x PATH $PATH $GOPATH/bin 
set -x PATH $PATH $HOME/.local/bin 
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -U fish_greeting

zoxide init fish | source
mise activate fish | source

if status is-interactive
    fish_hybrid_key_bindings # vim editing + emacs keybindings
    fzf --fish | source

    bind -M insert \el 'nextd && commandline -f repaint'
    bind -M insert \eh 'prevd && commandline -f repaint'

    alias cr "clear"
    alias e "exit"
    alias ls "eza"
    alias la "eza -la"
    alias ll "eza -l"
    alias grpo "git remote prune origin"
    alias lg "lazygit"
    abbr --add dco "docker compose"
end
