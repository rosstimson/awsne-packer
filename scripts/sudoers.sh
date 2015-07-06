#!/bin/bash -eux

# Keep aws tools in path for sudo
sed -i -e 's/Defaults\s*secure_path.*/Defaults    secure_path = \/sbin:\/bin:\/usr\/sbin:\/usr\/bin:\/opt\/aws\/bin/' /etc/sudoers

# In order to use the EC2 tools with sudo which is also part of the Packer
# bundle process the following env vars need to be kept.
#   EC2_HOME=/opt/aws/apitools/ec2
#   EC2_AMITOOL_HOME=/opt/aws/amitools/ec2
sed -i -e '/XAUTHORITY"$/a Defaults    env_keep += "EC2_HOME EC2_AMITOOL_HOME"' /etc/sudoers
