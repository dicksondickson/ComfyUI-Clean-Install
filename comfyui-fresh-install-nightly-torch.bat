:: Comfy-UI Clean install + ComfyUI Manager
:: NIGHTLY TORCH


echo This will install NIGHTLY pytorch, ComfyUI and ComfyUI manager.


:: Install dependencies
pip install setuptools


:: uninstall exiting pytorch and install pytorch latest nightly
pip uninstall torch torchvision torchaudio
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu124


:: clone comfy
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI
pip install -r requirements.txt


:: install manager
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
cd ComfyUI-Manager
pip install -r requirements.txt


pause