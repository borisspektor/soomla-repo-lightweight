#!/bin/sh

FILES=(
     build/
     social-providers/ios-profile-google/libs
)

./pruner.sh ${FILES[@]}
