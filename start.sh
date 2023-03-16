#!/bin/bash
sudo apt update -y
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install python3
sudo apt install git
git clone https://github.com/iampsrv/flask-app-aws.git
cd flask-app-aws
sudo apt-get -y install python3-pip
pip install -r req.txt
python3 main.py
