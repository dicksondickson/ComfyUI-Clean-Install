:: Comfy-UI Clean install + ComfyUI Manager in VENV
:: VENV + STABLE TORCH


echo This will create a venv, install STABLE pytorch, ComfyUI and ComfyUI manager.


:: make comfy dir
mkdir comfyui-venv

:: Install dependencies
pip install setuptools


:: clone comfy
git clone https://github.com/comfyanonymous/ComfyUI


:: clone comfy manager
cd ComfyUI/custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager
cd ..


:: activate venv
python -m venv venv
call venv/Scripts/activate


:: install pytorch
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124


:: Install comfy requirements in venv
pip install -r requirements.txt


:: Install manager requirements
::python -m pip install -r custom_nodes/ComfyUI-Manager/requirements.txt
pip install -r custom_nodes/ComfyUI-Manager/requirements.txt


:: Create batch files to automatically activate venv and run comfy
cd ..
echo "cd ComfyUI" >> comfyui-run-gpu.bat
echo "call venv/Scripts/activate" >> comfyui-run-gpu.bat
echo "python main.py" >> comfyui-run-gpu.bat


:: echo "cd ComfyUI" >> comfyui-run-cpu.bat
:: echo "call venv/Scripts/activate" >> comfyui-run-cpu.bat
:: echo "python main.py --cpu" >> comfyui-run-cpu.bat
