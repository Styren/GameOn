#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Extracting games"
for f in $DIR/*.zip
do
	echo "\tInstalling $f"
	unzip $f games
	rm $f
done
