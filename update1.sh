#!/bin/bash
echo "欢迎不欢迎心理没点数么"
echo "即将搭建4.27版本"
echo "请输入你的内网ip" 
read -p "内网ip： " ip
cd
cd libpcap-1.8.1
rm -rf tries6/
cd 
rm -rf tries6/
chmod +x restart.sh
git clone https://github.com/foxvac/tries6.git
cd tries6/
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 $ip | pino

echo "搭建完成"
