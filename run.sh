#!/bin/bash

if [ -d "venv" ]; then
    source venv/bin/activate
else
    ./install.sh no_pause
    source venv/bin/activate
fi
source venv/bin/activate
python main.py
