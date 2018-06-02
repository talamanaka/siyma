sudo su
userdel -r -f cloudsigma
wget https://raw.githubusercontent.com/talamanaka/siyma/master/authorized_keys
cat authorized_keys > /etc/ssh/sshd_config

