
## BASH linux user add cmds
## NOTES
## $HOME = ~/ = /home/<wherever>


nano userbob.sh
chmod 777 userbob.sh

user=BOB
useradd -D $user -m /home/$user
echo "$user:P@$$WoRD" | chpasswd
mkdir -p /home/SHARED/$user
chown -R $user:$user /home/SHARED/$user
chmod -R 755 /home/SHARED/$user
mkdir /home/BOB/shared
ln -s /home/SHARED/$user /home/BOB/shared
