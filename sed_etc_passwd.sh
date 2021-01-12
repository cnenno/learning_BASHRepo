
## how to sed etc/passwd


sed -e '\/bin\/sh/d; \/bin\/false/d' /etc/passwd > $HOME/PASS/passwd.txt | cat $HOME/PASS/passwd.txt


