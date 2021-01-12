

## Targeted md5sum on /etc/passwd


## created a variable of /etc/passwd, 
## sorted with delimiter ":" set to the 4 field (GID) 
## then take the first 10 lines of /etc/passwd with 'head,' 
## the last line of the first ten with 'tail -n 1', 
## then print the 6th field (home dir) of that (10th) entry. 
## once its printed through echo, take the md5sum hash output.


A=$(cat /etc/passwd | sort -t: -k 4 -g | head | tail -n 1 | awk -F: '{print $6}'} && echo $A | md5sum



## -----------------------------
## Primary ANSWER

cat /etc/passwd | sed 's/:/ /g' | column -t | sort -n -k 4 | sed '10q;d' | awk '{print $6} | md5sum

## read -p "Press enter to continue"

## solution 2

sort -t: -n -k 4 /etc/passwd | awk -F: 'NR==10 {print $6}' | md5sum


