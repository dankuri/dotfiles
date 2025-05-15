# for macos
if test -e "/opt/homebrew/bin"
    fish_add_path "/opt/homebrew/bin"
end
if test -e "/opt/homebrew/opt/libpq/bin" # psql - brew install libpq
    fish_add_path "/opt/homebrew/opt/libpq/bin"
end
if test -e "$HOME/.config/emacs/bin" # doom emacs
    fish_add_path "$HOME/.config/emacs/bin"
end

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx MANPAGER "nvim +Man!"
set -x GOPATH $HOME/.go
set -x PATH $PATH $GOPATH/bin 
set -x PATH $PATH $HOME/.local/bin 
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -U fish_greeting

zoxide init fish | source

if status is-interactive
    fish_hybrid_key_bindings # vim editing + emacs keybindings
    starship init fish | source
    fzf --fish | source

    bind -M insert \e\cl 'nextd && commandline -f repaint'
    bind -M insert \e\ch 'prevd && commandline -f repaint'

    alias em "emacsclient -tc"
    alias ls "eza"
    alias la "eza -la"
    alias ll "eza -l"
    alias lg "lazygit"
    alias lzd "lazydocker"
    abbr --add dco "docker compose"
end
