#!/bin/bash -eux

yum -y update
reboot
# Needed to make sure sshd shuts down before Packer trys to continue.
sleep 60
