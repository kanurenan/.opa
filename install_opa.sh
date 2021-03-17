#! /bin/bash

sudo chmod +x ~/.opa/opa

if [ -f /usr/local/bin/opa ]; then
    sudo rm /usr/local/bin/opa
fi
sudo ln -s ~/.opa/opa /usr/local/bin/opa