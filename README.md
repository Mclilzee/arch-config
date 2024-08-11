# Arch config

Personal configuration for Arch, including all installed packages and setups.

## Overview Image

![Arch linux desktop image overview](./assets/arch-overview.png)

## Installation using stow

- Fork and Clone the repository you don't need git history so you can use --depth 1. Make sure to change username to your name:

```bash
git clone --depth 1 git@github.com:<username>/arch-config.git
```

- Install packages and stow the files using available script:

```bash
sudo ./archgo.sh
```

## Alternative installation without stow

- If you do not wish to create a fork and use links then you can clone the repo, install packages, move files to your directories

```bash
git clone --depth 1 https://github.com/Mclilzee/arch-config ~/arch-config
```

- Install packages

```bash
sudo pacman -S --needed $(< ~/arch-config/packages.txt)
```

- Move home config to home directory, make sure to edit .gitconfig to be your own git configuration

```bash
mv ~/arch-config/home-configurations/.* ~/
```

- Clean up unecessary files

```bash
rm -rf ~/arch-config/README.md ~/arch-config/packages.txt ~/arch-config/home-configurations/ ~/arch-config/bin/
```

- Move configurations to your config directory:

```bash
mv ~/arch-config/* ~/.config/
```

- Remove left over directory

```bash
rm -rf ~/arch-config/
```

You should be all set to go!
