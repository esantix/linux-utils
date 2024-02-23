#!/usr/bin/env bash

aws_profiles=$(cat "$HOME/.aws/config" | grep -o -E 'sso-[0-9]{12}' )
profile=$(printf "%s\n" "${aws_profiles[@]}" | fzy )

if [[ -z $profile ]]; then
    echo "No profile chosen. Exiting..."
    exit 1
else
    export AWS_PROFILE=$profile
    aws sso login --profile "$profile"
    echo "Logged to $AWS_PROFILE"
fi
