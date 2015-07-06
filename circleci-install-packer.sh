set -x
set -e
if [ ! -e packer/packer ]; then
  wget https://dl.bintray.com/mitchellh/packer/packer_0.8.1_linux_amd64.zip
  unzip packer_0.8.1_linux_amd64.zip -d packer
fi
