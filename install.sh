
# This script installs the bash tips and tricks collection


# strfile tips/french/bash/*.txt > /dev/null
for dir in tips/*/; do
    for dir2 in "$dir"/*/; do
        for file in "$dir2"*.txt; do
            if [ -f "$file" ]; then
                strfile "$file" > /dev/null
            fi
        done
    done
done

#create the app folder

if [ ! -d ~/.term_tips ]; then
    mkdir ~/.term_tips
fi
#copy the tips and tricks to the app folder
cp -r tips/* ~/.term_tips/ ;
cp ./uninstall.sh ~/.term_tips/ ;
chmod +x ~/.term_tips/uninstall.sh ;

#register the version of the install
git=https://api.github.com/repos/MonsieurCo/Formidable-Conseils-du-Terminal/releases/latest
tag= eval "curl -s $git| jq -r '.tag_name' " >> ~/.term_tips/version


command="~/.term_tips/cowtips.sh $1 $2;"

if ! grep -q "cowtips.sh"  ~/.profile ; then
    echo $command >> ~/.profile ;
    echo "alias cowtips='~/.term_tips/cowtips.sh'" >> ~/.profile;
    
    cowsay "Bash tips and tricks collection installed :)";
else
    cowsay "The fortune command is already added to ~/.profile ! "
fi
