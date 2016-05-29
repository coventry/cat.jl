#!/bin/bash

# Set up this box, which is a debian-jessie at the moment.

mkdir -p ~/bin

# Add julia destination to the PATH
cat >> ~/.bashrc <<EOF
export PATH=~/bin/:${PATH}
export PATH=${PATH}:~/alien/julia/bin/
EOF

.  ~/.bashrc

`dirname $0`/get-julia.sh
