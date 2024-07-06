#!/bin/bash

# Check if pip is installed
if ! command -v pip &> /dev/null
then
    echo "pip could not be found. Installing pip..."
    # Download get-pip.py
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    # Install pip
    python get-pip.py
    # Remove get-pip.py
    rm get-pip.py
else
    echo "pip is already installed."
fi
