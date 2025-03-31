cowsay -f tux "Uninstalling bash tips and tricks collection :("
rm ~/.term_tips -rf
sed -i '/fortune ~\/.term_tips\/bash_tips.txt | cowsay/d' ~/.profile
echo " bash tips and tricks collection folder uninstalled from the home directory."

