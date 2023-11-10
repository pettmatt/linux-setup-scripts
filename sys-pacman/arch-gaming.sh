#!/bin/sh
# You use Arch?

if cat /etc/*-release | grep -q "Arch Linux"; then
	echo "Using Arch Linux"
else
	echo "Not using Arch. Exiting from pacman gaming installation."
	exit 1
fi

if ! pacman -Q "lutris" &> /dev/null
then
	echo "Installing Lutris"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		sudo pacman -S --noconfirm lutris
	else
		sudo pacman -S lutris
	fi
fi

if ! pacman -Q "wine" &> /dev/null
then
	echo "wine"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		sudo pacman -S --noconfirm wine
	else
		sudo pacman -S wine
	fi
fi
