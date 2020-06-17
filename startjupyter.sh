#!/bin/bash
#in plaats van dit script kan ook gewoon een "docker run" gedaan worden met veel minder opties, maar dit is vollediger

EXTERNEPOORT=8888	#pas dit aan als ge al een service hebt draaien op 8888
NAAM=beurs	#pas dit aan als ge al een container met de naam jupyter hebt

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
GID=$(id -g $USER)
docker run --user root -w /home/$USER -e CHOWN_HOME=yes -e NB_UID=$UID -e NB_GID=$GID -e NB_USER=$USER -d --rm -p $EXTERNEPOORT:8888 -v $DIR/bestanden:/home/$USER --name $NAAM jupyter/scipy-notebook:dd2087c75645
echo "-  Login op http://localhost:8888 met wachtwoord 'pass'"
echo "-  Draai 'docker stop $NAAM' of gebruik de 'quit' knop in jupyter om af te sluiten"
