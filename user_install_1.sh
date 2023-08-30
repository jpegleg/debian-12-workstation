#!/usr/bin/env sh

wget -O reaper.tar.xz http://reaper.fm/files/6.x/reaper681_linux_x86_64.tar.xz
mkdir ./reaper
tar -C ./reaper -xf reaper.tar.xz
./reaper/reaper_linux_x86_64/install-reaper.sh --install ~/ --integrate-desktop
rm -rf ./reaper
rm reaper.tar.xz
touch ~/REAPER/reaper.ini

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://github.com/jpegleg/jpegleg-lib
cd jpegleg-lib/
bash clone.sh
cp Xresources/Xresources ~/.Xresources
xrdb -merge ~/.Xresources
cp metaRC/metaRC ~/.bashrc
cp jpegleg-vimrc/.vimrc ~/.vimrc
cd dwarven-toolbox
cp no-zlib_Cargo.toml Cargo.toml
cargo build --release --all
