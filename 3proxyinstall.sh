version=0.8.13
apt-get update && apt-get -y upgrade
apt install megatools
apt-get install gcc make git -y
megadl 'https://mega.co.nz/#!FdJyXbyB!FkFdUTyxbPlTzMY3wVrRx1qjAJJi47XPXb9-gziFhDc'
tar xzf socks5.tar.gz
cd socks5.tar.gz
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://github.com/sameerlike141/3proxy-1/blob/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
mkdir /var/log/3proxy/
wget --no-check-certificate https://github.com/SnoyIatk/3proxy/raw/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate  https://raw.github.com/SnoyIatk/3proxy/master/3proxy
chmod  +x /etc/init.d/3proxy
update-rc.d 3proxy defaults
