#!/bin/bash

git submodule init
git submodule update
uv venv --python 3.12 venv
source venv/bin/activate
uv pip install -U -r requirements.txt
deactivate
cd backend
git submodule init
git submodule update
cd sd_scripts
uv venv --python 3.12 venv
source venv/bin/activate
uv pip install -U pip
uv pip install -U -r requirements.txt
uv pip install -U ../custom_scheduler/.
uv pip install -U -r ../requirements.txt
uv pip install -U ../lycoris/.
uv pip install -U torch==2.7.1 torchvision==0.22.1 --index-url https://download.pytorch.org/whl/cu128
uv pip install -U numpy==1.26.4
deactivate
