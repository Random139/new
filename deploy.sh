#!/bin/bash
set -e
cd /home/ubuntu/app

if ! command -v pip3 &> /dev/null
then
    sudo apt update
    sudo apt install python3-pip -y
fi

pip3 install -r requirements.txt
nohup python3 app.py > app.log 2>&1 &
