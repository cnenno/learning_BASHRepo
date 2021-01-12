
## coping and detecting .ssh


#!/bin/bash

if [[ -d /home/.shh ]]
then
	echo "file exits copy now"
	cp -a -r /home/.ssh/. $HOME/SSH/
else
	echo "hey /home/.ssh doesn't exist!"
fi


HIS ANSWER

if [[ -d /home/.shh ]] :then
	mkdir $HOME/SSH/
	cp $home/.ssh/. $HOME/SSH/
	echo "copied"
else
	echo ".ssh does not exist"
fi

