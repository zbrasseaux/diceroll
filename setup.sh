#!/bin/bash

echo "Copying dice.py to /usr/bin directory."
sudo cp ./dice /usr/bin/dice

echo "Changing permissiond of /usr/bin/dice."
sudo chmod 777 /usr/bin/dice

echo "Setup complete."
