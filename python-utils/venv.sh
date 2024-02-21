#!/usr/bin/env bash

venv_exists=$( ls -a | grep ".venv")
 
if [ -z $venv_exists ]; then
    echo "No .venv found. Creating .venv " 
    python3 -m venv .venv
fi

source .venv/bin/activate