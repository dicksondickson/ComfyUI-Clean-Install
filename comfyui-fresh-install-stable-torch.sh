#!/bin/bash

# ComfyUI Clean install + ComfyUI Manager
# STABLE TORCH


echo "This will install STABLE pytorch, ComfyUI and ComfyUI manager."


# Install dependencies
echo "Install dependencies"
sudo apt install python-is-python3
sudo apt install python3-pip
sudo apt install ffmpeg
pip install setuptools



# Install CUDA 12.6 for Ubuntu based distros 22.04.
#echo "Install CUDA"
#wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
#sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
#wget https://developer.download.nvidia.com/compute/cuda/12.6.0/local_installers/cuda-repo-ubuntu2204-12-6-local_12.6.0-560.28.03-1_amd64.deb
#sudo dpkg -i cuda-repo-ubuntu2204-12-6-local_12.6.0-560.28.03-1_amd64.deb
#sudo cp /var/cuda-repo-ubuntu2204-12-6-local/cuda-*-keyring.gpg /usr/share/keyrings/
#sudo apt-get update
#sudo apt-get -y install cuda-toolkit-12-6



# Nvidia Drivers - not needed for popos and WSL
#sudo apt-get install -y nvidia-open
#sudo apt-get install -y cuda-drivers



# Uninstall existing pytorch and install stable pytorch
pip uninstall torch torchvision torchaudio
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124



# Clone ComfyUI
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI
pip install -r requirements.txt



# Install manager
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
cd ComfyUI-Manager
pip install -r requirements.txt



# Pause
echo "Done"
read -p "Press Enter to continue..."