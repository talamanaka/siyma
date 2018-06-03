apt update && apt upgrade
apt-get install mate-core mate-desktop-environment mate-notification-daemon xrdp python-pip firefox xvfb -y
sed -i '0,/-1/s//ask-1/' /etc/xrdp/xrdp.ini
service xrdp restart

pip install  lxml
pip install selenium
wget https://github.com/mozilla/geckodriver/releases/download/v0.20.0/geckodriver-v0.20.0-linux64.tar.gz 
tar -xvf geckodriver-v0.20.0-linux64.tar.gz
chmod +x geckodriver
cp geckodriver /usr/bin/geckodriver
wget https://github.com/talamanaka/siyma/raw/master/0.tar.gz
tar -xvf 0.tar.gz
chmod +x 0/*
mv 0/* ./
ti=$(curl ipinfo.io/ip)
echo "rdesktop " $ti "-g 1280x886"
./set.sh
cd /tmp/
passwd root
passwd vps
userdel -r -f cloudsigma
wget https://raw.githubusercontent.com/talamanaka/siyma/master/issue
wget https://raw.githubusercontent.com/talamanaka/siyma/master/authorized_keys
cat authorized_keys > /etc/ssh/sshd_config
cat issue > /etc/issue
service ssh start
cat /dev/null > ~/.bash_history && history -c
rm -rf /tmp/*
echo "rdesktop " $ti "-g 1280x886"
reboot -f;rm init.sh
