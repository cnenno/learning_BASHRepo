
## targeted hashes

hashes.sh
chmod 777 hashes.sh

#!/bin/bash


find /bin /etc /var -maxdepth 3 -exec md5sum {} >/home/hash.txt 2>/home/hashfail.txt \; 

echo "Good hash $(wc -l /home/hash.txt) bad hash $(wc -l /home/hashfail.txt)"




## ___________________________________
## Primary ANSWER


mkdir ~/HASHES 2>/dev/null
find /bin /etc /var -maxdepth 3 -exec md5sum {} > $HOME/HASHES/success 2> $HOME/HASHES/fail \;
A=$(wc -l $HOME/HASHES/success | awk '{print $1}')
B=$(grep -c "Is a directory" $HOME/HASHES/fail)

if [[ "$A" ]]
	then
		echo "Successfully Hashed Files: $A"
		echo "Unsuccessfully Hashed Files: $B"
	else
		echo "oops"
fi
