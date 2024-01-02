#!/bin/sh
# You use Arch?

if cat /etc/*-release | grep -q "Arch Linux"; then
	echo "Using Arch Linux"
else
	echo "Not using Arch. Exiting from pacman installation."
	exit 1
fi

if ! pacman -Q "fish" &> /dev/null
then
	echo "Installing Fish shell"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		sudo pacman -S --noconfirm fish
	else
		sudo pacman -S fish
	fi
fi

if ! pacman -Q "firefox-developer-edition" &> /dev/null
then
	echo "Installing Firefox developer edition"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		sudo pacman -S --noconfirm firefox-developer-edition
	else
		sudo pacman -S firefox-developer-edition
	fi
fi

if ! pacman -Q "noto-fonts" &> /dev/null
then
	echo "Installing Noto fonts"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		sudo pacman -S --noconfirm $(pacman -Ssq noto-fonts)
	else
		sudo pacman -S $(pacman -Ssq noto-fonts)
	fi
fi
