function welcome_message() {
    echo -e "   _____ ___              ___  "
    echo -e "  / ____/ _ \            / _ \ "
    echo -e " | |   | | | |_ ____   _| | | |"
    echo -e " | |   | | | | '__\ \ / / | | |"
    echo -e " | |___| |_| | |   \ V /| |_| |"
    echo -e "  \_____\___/|_|    \_/  \___/ "
}

welcome_message
#source ~/.nix-profile/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.nix-profile/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
#source ~/.nix-profile/share/zsh-fzf-history-search/zsh-fzf-history-search.plugin.zsh

ZSH_THEME="bira"

eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"

export EDITOR=nvim
export VISUAL=nvim
export XDG_CONFIG_HOME=$HOME/.config
export NIX_LD=/nix/store/r8qsxm85rlxzdac7988psm7gimg4dl3q-glibc-2.39-52/lib/ld-linux-x86-64.so.2
export NIX_LD_LIBRARY_PATH=/nix/store/qksd2mz9f5iasbsh398akdb58fx9kx6d-gcc-13.2.0-lib/lib:/nix/store/mg1284kfh1m2xms1ghsw4nv8vhqisj22-openssl-3.0.14/lib
export PATH=~/.local/.npm-global/bin:$PATH

alias cl="clear"
alias nix-shell="nix-shell --command zsh"
alias ls="eza --icons=always"
alias hibernate="hyprlock & systemctl hibernate"

# Source .local_zshrc if it exists
if [ -f ~/.local_zshrc ]; then
    source ~/.local_zshrc
fi

