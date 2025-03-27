#!/usr/bin/env bash

BASE_DIR="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"

THOME="${1:-$HOME}"
TDOTDIR="$THOME/.config/tmux"

mkdir -p $TDOTDIR
[ ! -d $THOME/.local/share/tmux/plugins/tpm ] && \
    git clone --depth 1 https://github.com/tmux-plugins/tpm \
        $THOME/.local/share/tmux/plugins/tpm
cp $BASE_DIR/tmux.conf $TDOTDIR

