#!/usr/bin/bash

if [ -f '/mnt/c/Program Files/Google/Chrome/Application/chrome.exe' ]; then
	chrome_path='/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe'
elif [ -f '/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe' ]; then
	chrome_path='/mnt/c/Program\ Files\ (x86)/Google/Chrome/Application/chrome.exe'
else
	echo 'Google chrome is not installed on your windows system'
	exit 1
fi

printf 'chrome() {\n\tnohup %s "\\\\\\\\wsl.localhost\\\\Arch\\\\"%s > /dev/null 2>&1 &!\n}\n' "$chrome_path" "\$(realpath \"\${1}\")" >>~/.zshrc
