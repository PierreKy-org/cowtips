#!/bin/bash

# check for a new release should do it at the start but we should keep the last tag version to not download the same version.
git=https://api.github.com/repos/MonsieurCo/Formidable-Conseils-du-Terminal/releases/latest

# curl -s $git | grep "browser_download_url" | cut -d '"' -f 4 | wget -qi - 
tag= eval "curl -s $git| jq -r '.tag_name' " > /tmp/cowtag
if ! diff /tmp/cowtag ~/.term_tips/version > /dev/null; then
    echo "New version of cowtips available"
fi



if [ "$1" == "uninstall" ]; then
    ~/.term_tips/uninstall.sh
else
    if [ "$1" == "french" ]; then
        eval "fortune ~/.term_tips/$1/bash/bash_tips.txt | cowsay";fi
    if [ "$1" == "english" ]; then
        eval "fortune ~/.term_tips/$1/bash/bash_tips.txt | cowsay";fi
    if [ "$1" == "help" ]; then
        cowsay "For now only french and bash are available. :(";fi
    if [ "$1" == "" ]; then
        echo "Usage: cowtips [language] [techno]";fi
        

fi

