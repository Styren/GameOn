#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Checking for homebrew"
if which brew ; then
	echo "\tok"
else
	echo "\tInstalling Homebrew"
	sh "$DIR/homebrew_setup.sh"
fi

echo "Checking for XQuartz"
if which xquartz ; then
	echo "\tok"
else
	echo "\tInstalling XQuartz"
	sh "$DIR/xquartz_setup.sh"
fi

echo "Checking for wine"
if which wine ; then
	echo "\tok"
else
	echo "\tInstalling Wine"
	sh "$DIR/wine_setup.sh"
fi
