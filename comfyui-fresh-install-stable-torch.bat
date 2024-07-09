:: Comfy-UI Clean install + ComfyUI Manager
:: Installs stable torch

echo This will install STABLE pytorch, ComfyUI and ComfyUI manager.

pip install setuptools

:: uninstall exiting pytorch and install pytorch latest nightly
pip uninstall torch
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121

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