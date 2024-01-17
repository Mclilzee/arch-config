#!/usr/bin/bash

if [ -f '/mnt/c/Program Files/Google/Chrome/Application/chrome.exe' ]; then
	chrome_path='/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe'
elif [ -f '/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe' ]; then
	chrome_path='/mnt/c/Program\ Files\ (x86)/Google/Chrome/Application/chrome.exe'
else
	echo 'Google chrome is not installed on your windows system'
	exit 1
fi

printf 'google-chrome() {\n\tlocal file_path\n\tfile_path=$(realpath "${1}" 2> /dev/null)\n\t%s "\\\\\\\\wsl.localhost\\\\Arch\\\\$file_path" > /dev/null 2>&1 &\n\tdisown\n}\n' "$chrome_path" >>~/.bashrc
