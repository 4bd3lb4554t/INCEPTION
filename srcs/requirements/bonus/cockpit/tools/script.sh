#!/bin/bash

# sleep 3


useradd -m cockpit 

usermod -aG sudo cockpit

usermod -aG docker cockpit


echo "cockpit:0000" | chpasswd


# tail -f /dev/null

# apt install cockpit-podman -y



/usr/lib/cockpit/cockpit-ws --no-tls

