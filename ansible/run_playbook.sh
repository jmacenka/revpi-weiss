#!/bin/sh
# Run the Ansible playbook to setup the RevolutionPI
# Created by: Jan Macenka

ansible-playbook -i inventory playbook_setup_revpi.yml