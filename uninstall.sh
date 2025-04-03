cowsay -f tux "Uninstalling bash tips and tricks collection :("
rm ~/.term_tips -rf
sed -i '/alias cowtips='\''~\/.term_tips\/cowtips.sh'\''/d' ~/.profile
sed -i '/~\/.term_tips\/cowtips.sh/d' ~/.profile
echo " bash tips and tricks collection folder uninstalled from the home directory."

