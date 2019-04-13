#!/bin/bash

echo '==> Magnifying'

#Get upper bound
read -p '==> Upper bound [1920]:' UPPER
if [ "$UPPER" == '' ]; then
    UPPER=1920
fi

#Get bottom bound
read -p '==> Bottom bound [1500]:' BOTTOM
if [ "$BOTTOM" == '' ]; then
    BOTTOM=1500
fi

#Apply transformation
file * | awk -v upper="$UPPER" -v bottom="$BOTTOM" '$5<upper && $5>=bottom {print substr($1, 0, length($1) - 1)}' | xargs -I X convert X -resize 1920x magnified-X

#Deleting original images
file * | awk '$5<1920 && $5>=1500 {print substr($1, 0, length($1) - 1)}' | xargs rm -v

#Deleting files under dimensions especified
file * | awk -v bottom="$BOTTOM" '$5<bottom{print substr($1, 0, length($1) - 1)}' | xargs rm -v
