:: Compile Flash attention
:: NOT RECOMMENDED


:: Install torch nightly
:: pip uninstall torch torchvision torchaudio
:: pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu124


:: Install dependencies
pip install packaging
pip install wheel


:: Install ninja for faster compile
pip uninstall -y ninja && pip install ninja


:: set the number of threads. 10 jobs uses 60gigs of ram at peak
set MAX_JOBS=4


:: start compile
pip install flash-attn --no-build-isolation


:: build wheel
:: python setup.py bdist_wheel


pause