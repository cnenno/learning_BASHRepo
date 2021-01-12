
## bash stats

A=$(find /etc /bin /sbin /root -type f)

stat $A %a

%a octal
%n file name


if [[ ! -e $HOME/STATS ]]
then
	mkdir $HOME/STATS
fi

for A in /etc /bin /sbin /root 
do
	B=$(find $A -type f)
	


#!/bin/bash
find /etc /bin /sbin /root -type f -exec stat -c "%a" {} \; > ./A 2>/dev/null
if [[ -e ./less ]] then rm ./less; fi
if [[ -e ./more ]] then rm ./less; fi

for x in $(cat ./A)
do
	if (("$x" < "642"));
