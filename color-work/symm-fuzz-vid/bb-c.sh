#!/bin/bash

FILE="symm-fuzz-vid-C.c3dg"
TMPF="b.cfdg.tmp"
PATTERN=RYY
for ff in {1..159} ; do
  cat "$FILE" |sed "s/$PATTERN/$ff/g" > "$TMPF"  & kontecli -f"$TMPF" -dc$(printf "%03i" $ff).png --variationAAA
done
