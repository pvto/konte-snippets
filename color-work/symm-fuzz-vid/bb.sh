#!/bin/bash

FILE="symm-fuzz-vid.c3dg"
TMPF="b.cfdg.tmp"
PATTERN=RYY
for ff in {121..159} ; do
  cat "$FILE" |sed "s/$PATTERN/$ff/g" > "$TMPF"  & kontecli -f"$TMPF" -db$(printf "%03i" $ff).png --variationAAA
done
