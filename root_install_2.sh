#!/usr/bin/env sh

dpkg --add-architecture i386
mkdir -pm755 /etc/apt/keyrings
wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
aptitude update
aptitude install --install-recommends winehq-staging -y

aptitude install cabextract libnotify-bin tmux htop -y
