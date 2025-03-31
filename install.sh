
# This script installs the bash tips and tricks collection

strfile tips/*.txt > /dev/null
if [ ! -d ~/.term_tips ]; then
    mkdir ~/.term_tips
fi
cp tips/* ~/.term_tips/

if ! grep -q "fortune ~/.term_tips/bash_tips.txt | cowsay" ~/.profile; then
    echo "fortune ~/.term_tips/bash_tips.txt | cowsay" >> ~/.profile
    cowsay "Bash tips and tricks collection installed :)";
else
    cowsay "The fortune command is already added to ~/.profile ! "
fi
