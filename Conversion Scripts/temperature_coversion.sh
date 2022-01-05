#!/usr/bin/env bash

echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
read -p "What temperature scale do you want to convert from? " whatType

case "$whatType" in
  [1] | [1][one][One])
    echo "Celsius to Fahrenheit"
    read -p "Enter the temperature in Celsius: " celsius
    FAH = $((celsius*9/5+32))
    echo "The temperature in Fahrenheit is: $FAH"
    ;;
  [2] | [2][Two][two])
    echo "Fahrenheit to Celsius"
    read -p "Enter the temperature in Fahrenheit: " fahrenheit
    CELSIUS = $((fahrenheit-32)*5/9))
    echo "The temperature in Celsius is: $CELSIUS"
    ;;
  *)
    echo "Invalid input"
    ;;
esac
