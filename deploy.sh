#!/bin/bash
set -e
cd /home/ubuntu/app

if ! command -v pip3 &> /dev/null
then
    sudo apt update
    sudo apt install python3-pip -y
fi

sudo apt install python3-flask
python3 app.py 
