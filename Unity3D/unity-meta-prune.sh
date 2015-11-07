#!/bin/sh

FILES=`find . -type f -name '*.meta'`

./pruner.sh ${FILES[@]}
