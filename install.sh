
# This script installs the bash tips and tricks collection

strfile tips/*.txt > /dev/null
if [ ! -d ~/.term_tips ]; then
    mkdir ~/.term_tipsBash
fi
cp tips/* ~/.term_tips/

echo "fortune ~/.term_tips/bash_tips.txt | cowsay" >> ~/.profile

cowsay "Bash tips and tricks collection installed :)";