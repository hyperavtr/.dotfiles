#!/bin/bash 
dotfiles=$HOME/.dotfiles/.cantbesymlinked/etc

			#etc
sudo cp "${dotfiles}"/doas.conf /etc/
sudo cp "${dotfiles}"/hostname /etc/
sudo cp "${dotfiles}"/environment /etc/
sudo cp "${dotfiles}"/locale.gen /etc/
sudo cp "${dotfiles}"/sudoers /etc/
sudo cp "${dotfiles}"/tlp.conf /etc/
sudo cp "${dotfiles}"/timezone /etc/
sudo cp "${dotfiles}"/group /etc/
sudo cp "${dotfiles}"/group- /etc/

			#etc/folders
sudo cp "${dotfiles}"/default/grub /etc/default/grub
sudo cp "${dotfiles}"/dracut.conf.d/* /etc/dracut.conf.d/
sudo cp "${dotfiles}"/local.d/* /etc/local.d/
sudo cp "${dotfiles}"/modprobe.d/* /etc/modprobe.d/
sudo cp "${dotfiles}"/modules-load.d/nvidia.conf /etc/modules-load.d/
sudo cp "${dotfiles}"/sysctl.d/80-gamecompatibility.conf /etc/sysctl.d/
sudo cp "${dotfiles}"/udev/rules.d/* /etc/udev/rules.d/
sudo cp "${dotfiles}"/zsh/zshrc /etc/zsh/

#/etc/x11
sudo cp "${dotfiles}"/X11/xorg.conf /etc/X11/
sudo cp "${dotfiles}"/X11/xorg.conf.d/* /etc/X11/xorg.conf.d/

#/etc/portage
sudo cp "${dotfiles}"/portage/make.conf /etc/portage/
sudo mkdir -p /etc/portage/package.accept_keywords/
sudo cp "${dotfiles}"/portage/package.accept_keywords/* /etc/portage/package.accept_keywords/
sudo mkdir -p /etc/portage/package.use 
sudo cp "${dotfiles}"/portage/package.use/* /etc/portage/package.use/
sudo cp "${dotfiles}"/portage/repos.conf/* /etc/portage/repos.conf/
