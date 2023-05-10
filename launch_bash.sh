#!/bin/bash
sudo apt-get update
sudo apt-get install stress-ng -y
sudo apt-get install htop -y
sudo apt-get install python3-pip -y
pip3 install flask
sudo apt-get install git -y
cd /home/ubuntu
git clone https://github.com/Scc33/cs498_cc_mp2.git
cd /home/ubuntu/cs498_cc_mp2
python3 stress_server.py