#!/bin/bash
#in plaats van dit script kan ook gewoon een "docker run" gedaan worden met veel minder opties, maar dit is vollediger. Alhoewel een hoop opties niet nodig zijn, zijn ze wel handig
#Als de container al draaide gaat hij gewoon herstarten i.p.v. een error te geven

#Instellingen die aan te passen vallen. Zorg dat dit de standaardwaarden zijn bij een commit
EXTERNEPOORT=8888	#pas dit aan als ge al een service hebt draaien op 8888
NAAM=beurs	#pas dit aan als ge al een container met de naam beurs hebt

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
GID=$(id -g $USER)
docker stop beurs 2> /dev/null
echo "Mogelijks gaat hieronder wat docker uitvoer komen als de image nog gedownload worden. Dit is geen probleem maar kan even duren"
echo "Er gaat ook altijd eeh hash als uitvoer gegeven worden (de hash van de containernaam)"
docker run --user root -w /home/$USER -e CHOWN_HOME=yes -e NB_UID=$UID -e NB_GID=$GID -e NB_USER=$USER -d --rm -p $EXTERNEPOORT:8888 -v $DIR/bestanden:/home/$USER --name $NAAM jupyter/scipy-notebook:dd2087c75645
echo "-  Login op http://localhost:8888 met wachtwoord 'pass'"
echo "-  Draai 'docker stop $NAAM' of gebruik de 'quit' knop in jupyter om af te sluiten"
