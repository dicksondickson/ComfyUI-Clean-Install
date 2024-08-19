#!/bin/bash

# Install CUDA 12.6 for Ubuntu based distros 22.04


echo "This will install CUDA 12.6 for Ubuntu based distros 22.04..."


# Install dependencies
echo "Install dependencies"
sudo apt install python-is-python3
sudo apt install python3-pip
sudo apt install ffmpeg
pip install setuptools



# Install CUDA
echo "Install CUDA"
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.6.0/local_installers/cuda-repo-ubuntu2204-12-6-local_12.6.0-560.28.03-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-12-6-local_12.6.0-560.28.03-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-12-6-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-6



# Pause
echo "Done"
read -p "Press Enter to continue..."