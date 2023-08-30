# debian-12-workstation

This repository contains reference scripts for customizing Debian 12 for a performance-first workstation.

The scripts can be executed in order, but some are meant to be run as superuser while others run as the desktop user.

Install the liquorix kernel and base packages:

```
bash root_install_1.sh
```

Setup Reaper, Cargo, and dot files for user:
```
bash user_install_1.sh
```

Add 32-bit packages for Wine:
```
bash root_install_2.sh
```

Configure Wine and Yabridge for user:
```
bash user_install_2.sh
```
