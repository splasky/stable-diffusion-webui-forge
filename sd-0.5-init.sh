#!/bin/bash
# pip install clip --break-system-packages
# pip install scikit-image==0.20.0 --break-system-packages
# python3 launch.py --listen  --enable-insecure-extension-access --api --skip-python-version-check
tar zcf /opt/rocm-6.4.0.tgz /opt/rocm-6.4.0/
apt update
apt --fix-broken install
apt install pkg-config
apt install python3-virtualenv python3-dev build-essential meson ninja-build cython3 pkg-config liblapack-dev libjpeg-dev libpng-dev libtiff-dev libavformat-dev libavcodec-dev libavutil-dev libswscale-dev libx264-dev python-is-python3 libcairo-dev
rm -rf /opt/rocm-6.4.0
tar zxf /opt/rocm-6.4.0.tgz -C /opt/
# dpkg -i /stable-diffusion-forge/deb-packages/libjpeg-dev/*.deb
# dpkg -i /stable-diffusion-forge/deb-packages/libwebp-dev/*.deb
python3 -m venv venv
source venv/bin/activate
pip install -r requirements_versions.txt 
# if the pip install the pytorch from pytorch website
# pip uninstall torch
# python3 /pytorch/setup.py install # install the pytorch for gfx803
# python3 /vision/setup.py install  # install the torchvision for gfx803
python3 test_torch.py
python3 PIL_check.py 
python3 launch.py --listen
