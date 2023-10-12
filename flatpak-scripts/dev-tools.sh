#!/bin/sh

if ! flatpak list | grep -q "com.vscodium.codium"
then
	echo "Installing VSCodium"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub com.vscodium.codium
	else
		flatpak install flathub com.vscodium.codium
	fi
fi

if ! flatpak list | grep -q "com.getpostman.Postman"
then
	echo "Installing Postman"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub com.getpostman.Postman
	else
		flatpak install flathub com.getpostman.Postman
	fi
fi

if ! flatpak list | grep -q "net.poedit.Poedit"
then
	echo "Installing Poedit"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub net.poedit.Poedit
	else
		flatpak install flathub net.poedit.Poedit
	fi
fi
