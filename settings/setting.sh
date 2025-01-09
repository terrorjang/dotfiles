#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
echo $SCRIPT_DIR

ln -sf ${SCRIPT_DIR}/tmux.conf ~/.tmux.conf
ln -sf ${SCRIPT_DIR}/nvim ~/.config/nvim
