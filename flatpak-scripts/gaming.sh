#!/bin/sh

if ! flatpak list | grep -q "com.valvesoftware.Steam"
then
	echo "Installing Steam"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub com.valvesoftware.Steam
	else
		flatpak install flathub com.valvesoftware.Steam
	fi
fi

if ! flatpak list | grep -q "com.discordapp.Discord"
then
	echo "Installing Discord"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub com.discordapp.Discord
	else
		flatpak install flathub com.discordapp.Discord
	fi
fi
