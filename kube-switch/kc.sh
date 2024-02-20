#!/usr/bin/env bash

CONFIG_FILE="$HOME/.kube/config"
contexts=$(yq e '.contexts[].name' $CONFIG_FILE)

chosen_context=$(printf "%s\n" "contexts[@]"} | fzy )
kubectl config use-context $chosen_context
