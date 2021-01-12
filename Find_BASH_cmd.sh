
## Find BASH cmd
## finds any file that has *.bin in the name, 
## sorts it uniquely, then sets a delimiter to look for as "/" while OFS puts / back in place 
## (instead of blank spaces) and print $0 equals print entire line, 
## but now without the last line (last line equals $NF="" meaning nothing. 
## Finally uniq sorts uniquely while getting rid of duplicates.


find / -name *.bin | sort -u | awk -F"/" '{OFS="/"; $NF=""; print $0}' | uniq

find / -name *.bin 2>/dev/null | awk -F"/" 'BEGIN{OFS="/"; $NF=""; print $0}' | sort |uniq -c

