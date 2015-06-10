#!/bin/sh -f

# Get aliases and set prompt
mv .bash_aliases ~/
cp ~/.bashrc ~/.bashrc_old
cat ~/.bashrc .bashrc_mods > .bashrc_new
mv .bashrc_new ~/.bashrc
