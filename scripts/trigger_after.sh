#!/bin/bash

# copy public key to nodes
PUB_KEY=$(cat /tmp/vagrant_rsa.pub)
vagrant ssh node01 -- "echo $PUB_KEY >> ~/.ssh/authorized_keys"
vagrant ssh node02 -- "echo $PUB_KEY >> ~/.ssh/authorized_keys"
vagrant ssh node03 -- "echo $PUB_KEY >> ~/.ssh/authorized_keys"
#rm -f /tmp/vagrant_rsa*

exit 0
