#!/bin/sh
# Using no flags installs all
# Possible flags:
# -d -> Install development tools
# -g -> Install gaming related programs
# -c -> Install casual programs
# -fy -> Overwrite the need to input "yes"
# ---------------------------------------
# Use like this (when needed):
# sh install.sh -d -g -c -fy

# List for the arguments
args=()

# Loops through command-line arguments
for arg in "$@"; do
	args+=" $arg "
done

source ./flatpak.sh
