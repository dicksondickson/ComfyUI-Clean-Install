# ComfyUI-Clean-Install

Windows batch files to help install a new copy of ComfyUI and ComfyUI-Manager. Also installs required dependecies.

## delete-all-python-packages.bat

Deletes all of the installed Python packages. Good for after you've uninstalled Python and want to start clean.

## comfyui-fresh-install.bat

Clones and installs ComfyUI and ComfyUI-Manager.  
Installs torch nightly.

## comfyui-fresh-install-venv.bat

Installs ComfyUI in a venv.

## flash-attn-clone-source-compile.bat

Clones the latest Flash Attention source, compiles a wheel and installs the wheel via pip. This is tested to work in Windows and Comfy.  
Requires Python 3.11.x
Requires Visual Studio 2022 with C++ build tools installed.  
Requires CUDA. Latest version recommended. Tested with CUDA 12.5

## flash-attn-v1.0.9-clone-source-compile-for-older-gpu.bat

Clones the v1.0.9 of Flash Attention source, compiles a wheel and installs the wheel via pip. This is for older GPUs. Tested on 2080ti.

## flash-attn-pip-compile.bat

NOT RECOMMENDED. Compiles and installs the latest Flash Attention via pip. Although Flash Attention compiles, it seems to be missing something and doesn't work with ComfyUI.
