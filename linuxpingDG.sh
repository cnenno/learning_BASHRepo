

## Quick ping of the DG


A=$(ip route | grep default | awk -F" " '{print $3}')

B=$(whereis ping | awk -F/ '{print $3}')

C=$($B $A -c 6 -q)


if [[ $C ]]
then
	echo "ping DG"
	echo "$C"
else
	echo "failed to ping DG"
fi





