#! /bin/bash

read -p "Enter the circle's radius in square meters: " CIRCLE_RAY

CIRCLE_AREA=$((CIRCLE_RAY*CIRCLE_RAY))
CIRCLE_FINAL=$((CIRCLE_AREA*3))

echo "$CIRCLE_FINAL is the circle's radius in square meters."


