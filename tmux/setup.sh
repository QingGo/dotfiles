#!/usr/bin/env bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd) && cd "$SCRIPT_DIR" || return 1

ln -sf "$SCRIPT_DIR/tmux.conf" ~/.tmux.conf
ln -sf "$SCRIPT_DIR/tmux.conf.local" ~/.tmux.conf.local
