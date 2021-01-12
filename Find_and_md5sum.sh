
## How to find something in multiple folders and run md5sum on that item quickly

## Notes
## md5sum
## column
## head
## tail

/bin/bzfgrep  2b11565


A=$(find /bin /sbin /usr/bin /usr/sbin -type f -executable | sort | uniq | head | tail -n 1) && md5sum $A



Primary ANSWER

find_and_md5sum.sh
chmod 777 find_and_md5sum.sh

#!/bin/bash
A=$(find /bin /sbin /usr/bin /usr/sbin -type f -executable | sort | uniq | head -10 | tail -n 1)
md5sum $A
#openssl md5 $A
