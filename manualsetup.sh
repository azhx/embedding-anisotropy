#!/bin/bash -e
# -e exists immediately if pipeline returns non zero status
# https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#The-Set-Builtin

apt-get update

apt-get install -y \
    vim \
    ncdu \
    htop 

conda create -n alex python=3.9 -y
conda init
source /opt/conda/etc/profile.d/conda.sh
conda activate alex
conda install ipykernel -y
ipython kernel install --user --name=alex
conda install -c conda-forge owlready2 -y
pip install -r requirements.txt
git config --global user.email "alexdayouzhuang@gmail.com"
git config --global user.name "azhx"
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# https://explainshell.com/explain?cmd=curl+-fsSL+example.org