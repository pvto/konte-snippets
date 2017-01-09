#!/bin/bash

FILE="symm-fuzz-vid-B.c3dg"
TMPF="b.cfdg.tmp"
PATTERN=RYY
for ff in {0..159} ; do
  cat "$FILE" |sed "s/$PATTERN/$ff/g" > "$TMPF"  & kontecli '-s1000:1000' -f"$TMPF" -db$(printf "%03i" $ff).png --variationAAA
done
