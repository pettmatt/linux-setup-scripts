#!/bin/sh

echo "Installing programs using system package manager."

if [[ ! ${#args[@]} -eq 0 ]]; then
	if [[ " ${args[@]} " =~ " -fy " ]]; then
		source ./sys-pacman/arch.sh
	fi
else
	#source ./sys-pacman/casual.sh
	#source ./sys-pacman/gaming.sh
	source ./sys-pacman/arch.sh
fi

echo "Finishing installing programs using system package manager."
echo "------------------------------------------------"
