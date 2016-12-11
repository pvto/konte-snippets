#!/bin/bash

FILE="../refl.c3dg"
TMPF="b.cfdg.tmp"
PATTERN=RYY
for ff in {1..360} ; do
  cat "$FILE" |sed "s/$PATTERN/$ff/g" > "$TMPF"  & kontecli -f"$TMPF" -db$(printf "%03i" $ff).png --variationAAA
done
