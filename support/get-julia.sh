#!/bin/bash -ex

# Get the Julia nightly and hook it up

cd /tmp
wget -O julia.tgz https://status.julialang.org/download/linux-x86_64
mkdir -p alien
cd ~/alien
# mv julia-* /tmp || true  # Keep old julias around for now.
tar xf /tmp/julia.tgz
ln -s julia-* julia
rm -rf /tmp/julia.tgz /tmp/julia-*
