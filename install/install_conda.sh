#!/bin/bash

TMP_FILE_PATH="/tmp/conda/miniconda.sh"
TMP_PATH="/tmp/conda/"

#? Create the temporary directory
mkdir $TMP_PATH

#? Download the miniconda script
curl -o $TMP_FILE_PATH https://repo.anaconda.com/miniconda/Miniconda3-py39_4.11.0-Linux-x86_64.sh

#? Add executable permission
chmod +x $TMP_FILE_PATH

#? Install miniconda
sh $TMP_FILE_PATH

#? Update Bashrc
source ~/.bashrc