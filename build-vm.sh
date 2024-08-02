#!/bin/bash
echo "==> Creating an VM for LSRC please wait"
python3 -m venv LSRC-vm
echo "==> Instaling dependencies"
source LSRC-vm/bin/activate
pip3 install npyscreen
pip3 install tqdm
echo "==> LSRC-vm was successfully created"