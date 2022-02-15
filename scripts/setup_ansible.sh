#!/bin/bash
# Installing Ansible on your host-system via Python-pip with required dependencies
# Autor: Jan Macenka

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
python -m pip install --user ansible