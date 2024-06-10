:: Install comfyui and torch first

pip install packaging
pip install wheel
pip uninstall -y ninja && pip install ninja

git clone https://github.com/Dao-AILab/flash-attention.git
cd flash-attention
set MAX_JOBS=10
python setup.py install

pause