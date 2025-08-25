
# Awesome Term Tips / Les Formidables Conseils du Terminal

## Here is a small collection of terminal tips.

`fortune` is called every time a new terminal is opened and displays a little tip, all decorated with `cowsay`. Nothing too crazy.
Feel free to add or correct tips.

## Installation

Three packages are required:
```bash
sudo apt install fortune-mod cowsay jq
```

```bash
./install.sh english bash
```
Be sure to source your .profile from your shell config:
- zsh:
```bash
echo "source ~/.profile" >> .zshrc;
```
- bash:
```bash
echo "source ~/.profile" >> .bashrc;
```

## Usage
A tip is displayed every time you open a terminal, but you can also call the script with the command:
```bash
cowtips [language] [techno]
```

## Uninstallation
```bash
cowtips uninstall
```

## Example

![alt text](images/image.png)

## Motivation

This project aims to help Linux distribution users, especially those learning, to discover new terminal usage techniques.

The use of French in this project is to make these tips accessible to French-speaking students, for whom English might be a barrier to learning.

I am also open to translating these tips into multiple languages!

## Contribution

I would like to gradually add tips for other technologies and also enrich the existing ones.
Any contribution is welcome!

---

# Les Formidables Conseils du Terminal / Awesome Term Tips 

## Voici une petite collection de conseils pour le terminal.

`fortune` est appelé à chaque ouverture d'un nouveau terminal et affiche un petit conseil, le tout décoré avec `cowsay`. Rien de bien fou.
N'hésitez pas à ajouter ou corriger des conseils.

## Installation

Trois packages sont necessaire
```bash
sudo apt install fortune-mod cowsay jq 
```

```bash
./install.sh french bash
```
be sure to source your .profile from your shell conf : 
- zsh : 
```bash
echo "source ~/.profile" >> .zshrc;
```
- bash : 
```bash
echo "source ~/.profile" >> .bashrc;
```
## Usage
un tips se lance a chaque ouverture de terminal mais vous pouvez egalement appeller le scrip avec la commande :
```bash
cowtips [language] [techno] 
```
## Désintallation
```bash
cowtips uninstall
```

## Example

![alt text](images/image.png)

## Motivation 

Ce projet a pour but d’aider, au quotidien, les utilisateurs de distributions Linux, notamment ceux en apprentissage, à découvrir de nouvelles techniques d’utilisation du terminal.

L’intérêt du français dans ce projet est de rendre ces conseils accessibles aux étudiants français, pour qui la langue anglaise pourrait être un obstacle à leur apprentissage.

Je ne suis d’ailleurs pas du tout fermé à l’idée de traduire ces conseils dans plusieurs langues !

## Contribution

J’aimerais ajouter, au fur et à mesure, des conseils sur d’autres technologies et également enrichir l’existant.
Toute contribution est la bienvenue !
