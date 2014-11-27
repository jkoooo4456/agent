#!/bin/bash
set -e

echo '--- Installing fpm'
gem install fpm
rbenv rehash

echo '--- Downloading binaries'
rm -rf pkg
mkdir -p pkg
~/.buildbox/bin/buildbox-agent artifact download "pkg/*" pkg --job ""

./scripts/create_debian_package.sh
