

## How to test bad passwords

mkdir /home/user/PASS
cp /etc/shadow /home/user/PASS/shadow.txt

nano 

PW=$(openssl passwd -salt bad4u Password1234)
awk -F":" -v "str=$PW" 'BEGIN {OFS=":"} {gsub(/.*/,str,$2); print}' /etc/shadow > $HOME/PASS/shadow.txt
#sed "s+\([^:]*\):[^:]*+\1:$PW+" /etc/shadow > $HOME/PASS/shadow.txt

or 

BAD=$(openssl passwd -salt bad4u Password1234) | cat /etc/shadow | awk -F: -v two=$BAD '{print $1":"two":"$3":"$4":"$5":"$6":"$7":"$8}'
