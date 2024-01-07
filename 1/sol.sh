#!/usr/bin/bash

((sum=0))
((i = 1 ))
while read -r line; do
  # Extract all digits in the line
  nums=($(echo $line | grep -oE "[0-9]"))

  # Calibration value = first integer + last integer
  (( calValue = ${nums[0]} * 10 + ${nums[-1]} ))

  (( sum = $sum + $calValue ))

done < input.txt

echo $sum
