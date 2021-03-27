#!/bin/sh

# Link overlay files
ln -s onion/files files

# Setup Package Feeds
cp feeds.conf.default feeds.conf
cat onion/config/onion.feeds.conf >> feeds.conf
./scripts/feeds update -a
./scripts/feeds install -a

# Copy config file
cp onion/config/.config .

