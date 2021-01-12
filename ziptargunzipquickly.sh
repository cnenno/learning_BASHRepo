
## how to quickly zip,tar,gunzip files 

#!/bin/bash

mkdir $HOME/ZIP
echo "12345" | md5sum > $HOME/ZIP/file1
echo "6789" | md5sum > $HOME/ZIP/file2
echo "abcdef" | md5sum > $HOME/ZIP/file3


#!/bin/bash

zip -m -j 1.zip $HOME/ZIP/{file1,file2,file3}
tar -cf 1.tar 1.zip
gzip -c 1.tar > 1.gz
echo $(file "1.gz")


#!/bin/bash

if [[ -e 1.gz ]]
then
	gunzip 1.gz
else
	echo "nope1"
fi

if [[ -e 1 ]]
then
	tar -xf 1
else
	echo "nope2"
fi

if [[ -e 1 ]]
then
	unzip 1
else
	echo "nope3"
fi

if [[ -e file1 ]]
then
	echo $(cat file1 | awk '{print $1}'
fi

if [[ -e file2 ]]
then
	echo $(cat file1 | awk '{print $1}'
fi

if [[ -e file3 ]]
then
	echo $(cat file1 | awk '{print $1}'
else
	echo "nope4"
fi






















