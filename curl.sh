#!/bin/sh

if ! command -v curl &> /dev/null
then
	echo "Curl is not installed. Exiting installation that uses Curl."
	exit 1
fi

echo "Installing programs using Curl."

if [[ ! ${#args[@]} -eq 0 ]]; then
	if [[ " ${args[@]} " =~ " -d " ]]; then
		source ./curl-scripts/dev-tools.sh
	fi
else
	source ./curl-scripts/dev-tools.sh
fi

echo "Finishing installing programs using Curl."
echo "------------------------------------------------"
