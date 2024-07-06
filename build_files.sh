#!/bin/bash

# Source the environment to ensure paths are set correctly
source $HOME/.bashrc

# Ensure pip and python commands are available
if ! command -v pip &> /dev/null
then
    echo "pip could not be found. Installing pip..."
    # Ensure Python is installed
    if ! command -v python3.9 &> /dev/null
    then
        echo "Python 3.9 could not be found. Installing Python 3.9..."
        sudo apt-get update
        sudo apt-get install python3.9
    fi
    # Install pip using the specific version of Python
    python3.9 -m ensurepip
    python3.9 -m pip install --upgrade pip
else
    echo "pip is already installed."
fi

# Install the required Python packages
pip install -r requirements.txt

# Collect static files
python3.9 manage.py collectstatic --noinput
