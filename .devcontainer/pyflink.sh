#!/bin/bash
set -e

echo "Installing PyFlink"

apt-get update
apt-get install -y software-properties-common bash make cmake build-essential zip

# download miniconda.sh
sys_os=$(uname -s)
echo "Detected OS: ${sys_os}"
sys_machine=$(uname -m)
echo "Detected machine: ${sys_machine}"

if [[ ${sys_os} == "Darwin" ]]; then
    wget "https://repo.anaconda.com/miniconda/Miniconda3-py310_23.5.2-0-MacOSX-${sys_machine}.sh" -O "miniconda.sh"
elif [[ ${sys_os} == "Linux" ]]; then
    wget "https://repo.anaconda.com/miniconda/Miniconda3-py310_23.5.2-0-Linux-${sys_machine}.sh" -O "miniconda.sh"
else
    echo "Unsupported OS: ${sys_os}"
    exit 1
fi

# add the execution permission
chmod +x miniconda.sh

# create python virtual environment
./miniconda.sh -b -p venv

# activate the conda python virtual environment
source venv/bin/activate ""

# install PyFlink dependency
pip install "apache-flink==2.0.0"

# deactivate the conda python virtual environment
conda deactivate

# remove the cached packages
rm -rf venv/pkgs

rm -rf ./venv/