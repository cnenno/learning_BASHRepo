
## how to detect expiring accounts

#!/bin/bash


if [[ -e $HOME/EXP/dates ]]
then
	rm -f $HOME/EXP/dates
fi

for user in LARRY CURLY MOE
do
	chage -E -1 $user
	A=$(chage -l $user | grep "Account expires" | awk -F: '{print $2}')
	#echo "$user $A" >> $HOME/EXP/dates
	chage -E "2035-01-01" $user
	B=$(chage -l $user | grep "Account expires" | awk -F: '{print $2}')
	echo "$user $A $B" >> $HOME/EXP/dates\
	#chage -E -1 $user
done
cat $HOME/EXP/dates





