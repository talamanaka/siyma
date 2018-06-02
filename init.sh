
passwd root
passwd vps
userdel -r -f cloudsigma
wget https://raw.githubusercontent.com/talamanaka/siyma/master/issue
wget https://raw.githubusercontent.com/talamanaka/siyma/master/authorized_keys
cat authorized_keys > /etc/ssh/sshd_config
cat issue > /etc/issue
service ssh start
cat /dev/null > ~/.bash_history && history -c
rm init.sh
reboot -f
