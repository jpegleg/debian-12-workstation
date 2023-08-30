# debian-12-workstation

This repository contains reference scripts for customizing Debian 12 for a performance-first workstation.

The scripts can be executed in order, but some are meant to be run as superuser while others run as the desktop user.

Install the liquorix kernel and base packages, including GIMP, inkscape, compilers, vim, python3-venv, ufw:

```
bash root_install_1.sh
```

Setup Reaper, Cargo, and dot files for user:
```
bash user_install_1.sh
```

Add 32-bit packages for Wine, as well as additional packages for obs-studio, tmux, and htop:
```
bash root_install_2.sh
```

Configure Wine and Yabridge for user:
```
bash user_install_2.sh
```

The build is tested for Debian 12 using XFCE desktop, but it may work fine for other debian-based setups.
