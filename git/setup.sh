#!/usr/bin/env bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd) && cd "$SCRIPT_DIR" || return 1

git config --global user.name QingGo
git config --global user.email zyqingjohn@qq.com
git config --global init.defaultbranch master
