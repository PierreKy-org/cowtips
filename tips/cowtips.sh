#!/bin/bash

# check for a new release should do it at the start but we should keep the last tag version to not download the same version.
git=https://api.github.com/repos/MonsieurCo/Formidable-Conseils-du-Terminal/releases/latest


# Supported languages
languages=("french" "english")

# Supported technologies
technologies=("bash")




# check for update
# check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq could not be found, please install it to check for updates"
    updatable=0;
    # exit
else  
tag= eval "curl -s $git| jq -r '.tag_name' " > /tmp/cowtag
if ! diff /tmp/cowtag ~/.term_tips/version > /dev/null; then
    # echo "New version of cowtips available"
    updatable=1;
    version=$(cat /tmp/cowtag)
    else 
    updatable=0;
fi
fi

if [ "$updatable" -eq 1 ]; then
    read -p "A new version ($version) of cowtips is available! Do you want to update? [Y/n] " response
    if [[ "$response" =~ ^[Yy]$ || -z "$response" ]]; then
        echo "Updating cowtips..."
        # remove old version
        config=$(cat ~/.term_tips/config);
        ~/.term_tips/uninstall.sh >> /dev/null;

        # download the new version B-)
        curl -sL https://github.com/MonsieurCo/Formidable-Conseils-du-Terminal/archive/refs/tags/$version.tar.gz -o /tmp/cowtips_update.tar.gz
        # unpack the new version
        # check if the directory exists
        if [ -d /tmp/cowtips_update_dir ]; then
            rm -rf /tmp/cowtips_update_dir
        fi
        mkdir -p /tmp/cowtips_update_dir
        tar -xzf /tmp/cowtips_update.tar.gz -C /tmp/cowtips_update_dir 
        
        cd "/tmp/cowtips_update_dir/Formidable-Conseils-du-Terminal-$version/"
        eval "/tmp/cowtips_update_dir/Formidable-Conseils-du-Terminal-$version/install.sh $config" >> /dev/null;
        
        rm /tmp/cowtips_update.tar.gz

        cowsay "Update completed."
        source ~/.profile
        exit 0;
    else
        echo "Update skipped."
    fi
fi


if [ "$1" == "uninstall" ]; then
    ~/.term_tips/uninstall.sh
else
    if [ "$1" == "help" ]; then
        cowsay "For now only french and bash are available. :("; #TODO update that at some point
        echo "Usage: cowtips [language] [techno]";
        echo "Available languages: ${languages[*]}";
        echo "Available technologies: ${technologies[*]}";
    else
    
        if [ -z "$1" ]; then
            echo "Usage: cowtips [language] [techno]";
        else
        
            # check if the user has provided a language and technology
            if [[ ! " ${languages[@]} " =~ " $1 " ]]; then
            echo "Language not supported. Supported languages are: ${languages[*]}"
            exit 1
            fi
            if [[ ! " ${technologies[@]} " =~ " $2 " ]]; then
                echo "Technology not supported. Supported technologies are: ${technologies[*]}"
                exit 1
            fi

                # the holy program is here 

                eval "fortune ~/.term_tips/$1/$2/tips.txt | cowsay";
            
            
            fi
    fi
 
fi

