#!/usr/bin/env bash

DIR="$(dirname "$0")"

THOME="${1:-$HOME}"
TDOTDIR="$THOME/.config/tmux"

mkdir -p $TDOTDIR
[ ! -d $THOME/.local/share/tmux/plugins/tpm ] && \
    git clone --depth 1 https://github.com/tmux-plugins/tpm \
        $THOME/.local/share/tmux/plugins/tpm
cp $DIR/tmux.conf $TDOTDIR

