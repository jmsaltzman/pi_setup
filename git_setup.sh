#!/bin/sh

# Basic script to set default github user and email
# Mostly from: https://help.github.com/en/articles/setting-your-username-in-git

# Proto commands:
# git config --global user.name "Mona Lisa"
# git config --global user.email "email@example.com"

name_prompt="Enter your name to set as git global user.name: "
email_prompt="Enter your email address to set as git global user.email: "


# Get name
read -p "$name_prompt" name
if [ -z "$name" ]
then
    echo "No name specified, exiting"
    exit
fi

# Get email
read -p "$email_prompt" email
if [ -z "$email" ]
then
    echo "No email specified, exiting"
    exit
fi

# Set variables
echo "Setting name: \"$name\""
git config --global user.name "$name"
echo "Setting email: \"$email\""
git config --global user.email "$email"

# Report
echo ""
echo "git config --list:"
git config --list



