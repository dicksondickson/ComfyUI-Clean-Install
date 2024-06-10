:: Comfy-UI Clean install + ComfyUI Manager

pip install setuptools

:: uninstall exiting pytorch and install pytorch latest nightly
pip uninstall torch
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu124

:: clone comfy
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI
pip install -r requirements.txt

:: install manager
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git


pause