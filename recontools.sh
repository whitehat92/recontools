#!/bin/bash
apt install git
apt install python3-pip
if [ -d "/root/tools/"  ];then
        cd ~/tools; wget -c https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
tar -C /usr/local -xvzf go1.15.2.linux-amd64.tar.gz
echo "setting golang environment variables"
export $GOPATH="/root/go"
export $GOROOT="/usr/local/go"
echo "INSTALLING PYTHON MODULES FROM SCRIPTS LOCATED AT TOOLS"
if [ -d "/root/tools" ]; then
cd ~/tools
grep -ri "import" *.py |awk -F ":" '{print $2}' | awk -F " " '{print $2}' | sort -u | sort --uniq | grep -v error | $fi

echo "add shodan keys by shodan init <api key>"
echo "configure censys at /tools/python_scripts/censys-python"
echo "IMPORTING GOLANG TOOLS from tomnomnom, projectdiscovery and so on"
echo "httprobe"
go get github.com/tomnomnom/httprobe
echo "gf"
go get github.com/tomnomnom/gf~
echo "qsreplace"                                                                                                     
go get github.com/tomnomnom/qsreplace
echo "hacks"
go get github.com/tomnomnom/hacks
echo "meg"
go get github.com/tomnomnom/meg
echo "anew"
go get github.com/tomnomnom/anew
echo "ffuf"
go get github.com/ffuf/ffuf
echo "nuclei"
go get github.com/projectdiscovery/nuclei
echo "httpx"
go get github.com/projectdiscovery/httpx
echo "hakrawler"
go get github.com/hakluke/hakrawler
echo "hakrevdns"
go get github.com/hakluke/hakrevdns
echo "gau"
go get github.com/lc/gau
fi
fi
