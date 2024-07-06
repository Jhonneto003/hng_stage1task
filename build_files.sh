#!/bin/bash

# Ensure Python and pip commands are available
if ! command -v python3.9 &> /dev/null
then
    echo "Python 3.9 could not be found. Installing Python 3.9..."
    sudo apt-get update
    sudo apt-get install -y python3.9 python3.9-distutils
fi

if ! command -v pip3.9 &> /dev/null
then
    echo "pip for Python 3.9 could not be found. Installing pip for Python 3.9..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3.9 get-pip.py --user
    rm get-pip.py
fi

# Ensure pip and Python are accessible
export PATH="$HOME/.local/bin:$PATH"

# Install Python dependencies
pip3.9 install --user -r requirements.txt

# Collect static files
python3.9 manage.py collectstatic --noinput

