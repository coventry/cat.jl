#!/bin/bash

# Setting up the repository

sudo apt-get install git

# Identity

if [ -z "$USEREMAIL" ] ; then
    echo "Set the email address for git"
    exit
fi
git config user.name "Alex Coventry"
git config user.email $USEREMAIL
if [ ! -f ~/.ssh/id_rsa.pub ] ; then
    ssh-keygen
fi
echo "Add key to github.com/coventry if necessary:"
cat ~/.ssh/id_rsa.pub

# Git ignores
git config --global core.excludesfile ~/.gitignore_global
cat >> ~/.gitignore_global <<EOF
*~
.\#*
\#*
*.pyc
EOF

# The repository itself
mkdir -p ~/src
cd ~/src
if [ ! -f cat.jl ]; then
    git clone git@github.com:coventry/cat.jl.git
fi
cd cat.jl
git fetch
