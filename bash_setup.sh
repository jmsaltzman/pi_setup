#!/bin/sh -f

# Get aliases and set prompt
cp .bash_aliases ~/
cp ~/.bashrc ~/.bashrc_old
cat ~/.bashrc .bashrc_mods > .bashrc_new
cp .bashrc_new ~/.bashrc

# Source this new stuff
#source ~/.bashrc

