#!/usr/bin/env bash

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/f2i7n3u8
