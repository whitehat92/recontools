#!/bin/bash
apt install git -y
apt install python3-pip -y
apt install python-pip -y
if [ -d "/root/tools/"  ];then
mkdir -p ~/tools
echo "recon tools"
cd ~/tools
git clone https://github.com/whitehat92/opensubs
git clone https://github.com/achillean/shodan-python
wget https://github.com/tomnomnom/httprobe/releases/download/v0.1.2/httprobe-linux-amd64-0.1.2.tgz
tar -xzf httprobe-linux-amd64-0.1.2.tgz
mv httprobe /usr/bin/
git clone github.com/tomnomnom/gf
go build main.go
mv main /usr/bin/gf                                                                                                     
wget https://github.com/tomnomnom/qsreplace/releases/download/v0.0.1/qsreplace-linux-amd64-0.0.1.tgz
git clone github.com/tomnomnom/hacks
wget https://github.com/tomnomnom/meg/releases/download/v0.2.4/meg-linux-amd64-0.2.4.tgz
git clone github.com/tomnomnom/anew
go build main.go
mv main /usr/bin/anew
wget https://github.com/ffuf/ffuf/releases/download/v1.1.0/ffuf_1.1.0_linux_amd64.tar.gz
tar -xzf ffuf_1.1.0_linux_amd64.tar.gz
mv ffuf /usr/bin/ffuf
wget https://github.com/projectdiscovery/httpx/releases/download/v1.0.3/httpx_1.0.3_linux_amd64.tar.gz
tar -xzf httpx_1.0.3_linux_amd64.tar.gz
mv httpx /usr/bin/
echo "gau"
wget https://github.com/lc/gau/releases/download/v1.0.7/gau_1.0.7_linux_amd64.tar.gz
tar -xzf gau_1.0.7_linux_amd64.tar.gz
mv gau /usr/bin/
echo "add shodan keys by shodan init <api key>"
fi
