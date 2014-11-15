#!/bin/bash
# ~/.bash_profile - by William Hilton

# Assuming this is an Ubuntu System, the defaults are in .profile
# (which in turn calls .bashrc)
. "$HOME/.profile"

# I like to just git clone things into ~/bin, so I like to add
# all the binaries inside those repos to the PATH.
for d in ~/bin/*/bin; do PATH="$PATH:$d"; done

# VIM yeah.
export EDITOR=vim

# Automatically start tmux! (essentially replaces Bash as the default login s
# http://stackoverflow.com/a/22821040/2168416
tmux -2 attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
  exec tmux -2
fi
