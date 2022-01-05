#!/usr/bin/env bash

read -p "Enter the width of the short side of the trapezoid: " trapezeShortWidth
read -p "Enter the width of the long side of the trapezoid: " trapezeLongWidth
read -p "Enter the height of the trapezoid: " trapezeheight

TRAPEZE_AREA = $((($trapezeShortWidth + $trapezeLongWidth) * $trapezeheight / 2))

echo "The area of the trapezoid is: $TRAPEZE_AREA m2"
