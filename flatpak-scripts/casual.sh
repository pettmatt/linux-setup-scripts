#!/bin/sh
# Programs that can be enjoyed by every day Pete.

if ! flatpak list | grep -q "com.spotify.Client"
then
	echo "Installing Spotify"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub com.spotify.Client
	else
		flatpak install flathub com.spotify.Client
	fi
fi

if ! flatpak list | grep -q "com.brave.Browser"
then
	echo "Installing Brave Browser"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub com.brave.Browser
	else
		flatpak install flathub com.brave.Browser
	fi
fi

if ! flatpak list | grep -q "org.videolan.VLC"
then
	echo "Installing VLC"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub org.videolan.VLC
	else
		flatpak install flathub org.videolan.VLC
	fi
fi

if ! flatpak list | grep -q "org.mozilla.Thunderbird"
then
	echo "Installing Thunderbird"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y org.mozilla.Thunderbird
	else
		flatpak install flathub org.mozilla.Thunderbird
	fi
fi

if ! flatpak list | grep -q "org.mozilla.firefox"
then
	echo "Installing Firefox"
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		flatpak install -y flathub org.mozilla.firefox
	else
		flatpak install flathub org.mozilla.firefox
	fi
fi
