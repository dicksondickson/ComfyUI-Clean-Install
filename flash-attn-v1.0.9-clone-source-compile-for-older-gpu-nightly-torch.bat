:: Compile Flash attention
:: Only needed if you want to the use the latest and greatest


:: Uninstall existing flash-attn
pip uninstall flash-attn


:: Install torch nightly
pip uninstall torch torchvision torchaudio
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu124


:: Install dependencies
pip install packaging
pip install wheel


:: Install ninja for faster compile
pip uninstall -y ninja && pip install ninja


:: clone flash attention
git clone --branch v1.0.9 --depth 1 https://github.com/Dao-AILab/flash-attention.git
cd flash-attention


:: set the number of threads. 10 jobs uses 60gigs of ram at peak
set MAX_JOBS=5


:: start compile
:: python setup.py install


:: build wheel
python setup.py bdist_wheel


:: pip install some-package.whl
cd dist
pip install flash_attn-1.0.9-cp311-cp311-win_amd64.whl 


pause