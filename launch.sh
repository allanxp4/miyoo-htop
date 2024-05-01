#!/bin/sh
export TERMINFO_DIRS="$PWD/terminfo"
export PATH="$PWD:$PATH"
st -q -e htop