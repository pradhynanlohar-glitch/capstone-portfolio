#!/bin/bash
# simple-interest.sh - compute simple interest
# Usage: ./simple-interest.sh principal rate years

if [ $# -lt 3 ]; then
  echo "Usage: $0 principal rate years"
  exit 1
fi

P=$1
R=$2
T=$3

# calculate simple interest: (P * R * T) / 100
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)
echo "Principal: $P"
echo "Rate: $R%"
echo "Time: $T years"
echo "Simple Interest: $SI"
