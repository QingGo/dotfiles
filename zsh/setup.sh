#!/usr/bin/env bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd) && cd "$SCRIPT_DIR" || return 1

# install ohmyzsh using tuna image
install_omz() {
    rm -rf ~/.oh-my-zsh
    git clone https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git
    cd ohmyzsh/tools
    # avoid script exit
    sed -i'.bak' -e 's/exec/# exec/' install.sh
    REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git sh install.sh
    cd ../..
    rm -rf ohmyzsh
}
install_omz

ln -sf "$SCRIPT_DIR/zshrc" ~/.zshrc
ln -sf "$SCRIPT_DIR/zsh_alias" ~/.zsh_alias
ln -sf "$SCRIPT_DIR/zsh_omz" ~/.zsh_omz
[[ "$SHELL" =~ "zsh" ]] || chsh -s "$(command -v zsh)"
