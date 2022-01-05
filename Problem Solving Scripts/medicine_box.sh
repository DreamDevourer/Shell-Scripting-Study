#!/usr/bin/env bash
# I need to take 1.6ml of a medicine every day. A box of this medicine comes with a bottle of 20ml.

quantityTaken = 1.6
boxBottleQuantity = 20

read -p "How many months do you need to take this medicine? " monthsToTake
calcMed = $((quantityTaken*30))
echo "Ok, you will take: $calcMed ml of medicine every month"
mlTotal = $((calcMed*monthsToTake))
echo "So... You will have to take: $mlTotal ml of medicine in total."
masterCalc = $((mlTotal/boxBottleQuantity))
echo "That means you will need to buy: $masterCalc boxes of medicine."
