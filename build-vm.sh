#!/bin/bash
echo "==> Creating an VM for LUP please wait"
python3 -m venv LUP-vm
echo "==> Instaling dependencies"
source LUP-vm/bin/activate
pip3 install npyscreen
pip3 install tqdm
clear
echo "==> Refresh Profile"
source /etc/profile
echo "==> LUP-vm was successfully created"
exit
