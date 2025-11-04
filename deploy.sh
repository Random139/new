#!/bin/bash
cd /home/ubuntu/app

# Ensure pip3 exists
if ! command -v pip3 &> /dev/null
then
    sudo apt update
    sudo apt install python3-pip -y
fi

pip3 install -r requirements.txt

python3 app.py
