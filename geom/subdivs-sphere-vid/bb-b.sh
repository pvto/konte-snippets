#!/bin/bash

FILE="subdivs-sphere-b.c3dg"
TMPF="b.cfdg.tmp"
PATTERN=RYY
for ff in {0..359} ; do
  cat "$FILE" |sed "s/$PATTERN/$ff/g" > "$TMPF"  & kontecli -f"$TMPF" -db$(printf "%03i" $ff).png --variationAAA
done
