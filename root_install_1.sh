#!/usr/bin/env sh

set -e
apt-get install apt-transport-https -y
apt-get install aptitude -y
aptitude update && aptitude upgrade -y
aptitude install curl git vim -y
curl 'https://liquorix.net/add-liquorix-repo.sh' | bash
aptitude install linux-image-liquorix-amd64 linux-headers-liquorix-amd64 -y
aptitude install pipewire pipewire-alsa pipewire-audio pipewire-audio-client-libraries pipewire-jack pipewire-pulse libspa-0.2-jack wireplumber -y
cp /usr/share/doc/pipewire/examples/ld.so.conf.d/pipewire-jack-*.conf /etc/ld.so.conf.d/
ldconfig
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet threadirqs cpufreq.default_governor=performance"/g' /etc/default/grub
update-grub
echo '@audio - rtprio 90
@audio - memlock unlimited' | tee -a /etc/security/limits.d/audio.conf
echo 'vm.swapiness=10
fs.inotify.max_user_watches=6000000' | tee -a /etc/sysctl.conf
dpkg --add-architecture i386
mkdir -pm755 /etc/apt/keyrings
wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
aptitude update
aptitude install --install-recommends winehq-staging -y
aptitude install cabextract -y
aptitude install libnotify-bin -y
aptitude install inkscape gimp gcc clang ufw python3-venv -y
