#!/usr/bin/env bash

# In Mathematical terms, the sequence Fn of Fibonacci numbers is defined by the recurrence relation:
# Fn = Fn-1 + Fn-2
# Sample with Seed:
# F0 = 0 and F1 = 1
# Sequence sample:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377...

echo "Welcome to the Fibonacci Sequence Calc."
read -p "Type a number for the Fibonacci sequence: " fibUsrGift
fibonacciFunction "$fibUsrGift"

# Static input fo N
N=$fibUsrGift
# First Number
a=0
# Second Number
b=1
echo "The Fibonacci series is : "
fibApproach

function fibApproach() {
for (( i=0; i<N; i++ ))
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
}
