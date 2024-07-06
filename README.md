# ComfyUI-Clean-Install

Windows batch files to help install a new copy of ComfyUI and ComfyUI-Manager. Also installs required dependecies.

# comfyui-fresh-install.bat

Clones and installs ComfyUI and ComfyUI-Manager.  
Installs torch nightly.

# comfyui-fresh-install-venv.bat

Installs ComfyUI in a venv.

# flash-attn-clone-source-compile.bat

Clones Flash Attention source, compiles and installs. This is test to work in Windows and Comfy.  
Requires Visual Studio 2022 with C++ build tools installed.  
Requires CUDA. Latest version recommended. Tested with CUDA 12.5

# flash-attn-pip-compile.bat

Compiles and installs Flash Attention via pip. Although Flash Attention compiles, it seems to be missing something and doesn't work with ComfyUI. Not recommended.
