#!/bin/sh

if ! command -v flatpak &> /dev/null
then
	echo "Flatpak is not installed. Exiting installation that uses Flatpak."
	exit 1
fi

echo "Updating Flatpak."
command flatpak update

echo "Installing programs using Flatpak."

if [[ ! ${#args[@]} -eq 0 ]]; then
	if [[ " ${args[@]} " =~ " -c " ]]; then
		source ./flatpak-scripts/casual.sh
	fi
	#if [[ " ${args[@]} " =~ " -g " ]]; then
		#source ./flatpak-scripts/gaming.sh
	#fi
	if [[ " ${args[@]} " =~ " -d " ]]; then
		source ./flatpak-scripts/dev-tools.sh
	fi
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		source ./flatpak-scripts/casual.sh
		#source ./flatpak-scripts/gaming.sh
		source ./flatpak-scripts/dev-tools.sh
	fi
else
	source ./flatpak-scripts/casual.sh
	#source ./flatpak-scripts/gaming.sh
	source ./flatpak-scripts/dev-tools.sh
fi

echo "Finishing installing programs using Flatpak."
echo "------------------------------------------------"
