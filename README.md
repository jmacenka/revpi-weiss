# RevolutionPI as IoT Databridge

Developed by Jan Macenka

## General

This project contains an Ansible script for automatic setup of an RevolutionPI PLC with necessary Software to store Data and function as a databridge to other PLCs and PC systems.

## Used Softwarepackages

- NodeRed
- InfluxDB 2.0
- Grafana

## Principles and preparation

Communication between machines is primarily done via SSH using certificate based authentication. For this you will need a SSH-key-pair wich can be donen followingn these [instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
At the time of writing (Feb. 2022), I reccomend using `ed25519` as algorithm for key-generation.
On Windows systems it may be necessary to install SSH-Client first, see this [guide](https://docs.microsoft.com/de-de/windows-server/administration/openssh/openssh_install_firstuse).
SSH by default uses Port 22, so make sure your Network and Firewalls arent blocking this port.

## Setup

For setting up a remote machine, you need an controller machine with [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed. This machine must be in the same network as the target machine (RevolutionPI) that will be setup. The controller machine will connect to the client via SSH, install the necessary software packages, update the package manager and do other configurations like fixed IPs.

To start the setup do the following:

1. Clone this Repository/Project to the machine which will be the controller machine
2. Make sure Ansible is installed and have a SSH-Key which is located at `~/.ssh/id_ed25519`
3. Go into the ansible folder and generate your credentials file with `ansible-valut generate credentials`, the necessary structure for the file can be referenced in credentials.dummy on the same folder.
4. Run the test-connection playbook

## Additional aid

- If at any point in time the image on the RevPI got corrupted or damaged, it is possible to flash a new one following this [guide](https://revolutionpi.com/tutorials/images-2/safe-and-install-new-image-jessie-and-stretch/).
