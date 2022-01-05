#!/usr/bin/env bash

# 24785089
read -p "Type the minutes that you want to convert to yaers: " MINUTES
echo "$MINUTES minutes is $((MINUTES/60/24/365)) years"
