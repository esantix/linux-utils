#!/usr/bin/env bash

tools=(
    "aws-cli"
    "terraform"
    "kubectl"
    "k9s"
    "yq"
    "jq"
    "oh-my-zsh"
    "fzy"
    "shfmt"
    # "vscode"
    # "docker-desktop"tt
    )

for tool in ${tools[@]}; do
    echo "apt install $tool"
    # apt install $tool
done    