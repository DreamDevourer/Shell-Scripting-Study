#!/usr/bin/env bash

read -p "What currency are you using? (USD/BRL) " WHAT_CURRENCY
read -p "What is the income percentage per year? " INCOME_PER
read -p "See the projection until: (ex: 5) " INVESTMENT_UNTIL
read -p "How much do you want to invest? " HOW_MUCH

FINAL_INCOME=$(((INCOME_PER * HOW_MUCH) / 100))
TOTAL_INCOME=$((FINAL_INCOME + HOW_MUCH))

FINAL_INCOME_PRINTABLE=$((TOTAL_INCOME * INVESTMENT_UNTIL))

echo "Your final income in $INVESTMENT_UNTIL years is $FINAL_INCOME_PRINTABLE $WHAT_CURRENCY"

# For loop to know how much you will have in {$INVESTMENT_UNTIL} years.
for EACH_YEAR_INCOME in $(seq 1 $INVESTMENT_UNTIL)
  do
    TOT_INC=$((TOTAL_INCOME * EACH_YEAR_INCOME))
    echo "In $EACH_YEAR_INCOME year(s) you will have $TOT_INC $WHAT_CURRENCY"
done
