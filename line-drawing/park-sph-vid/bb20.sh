#!/bin/bash

FILE="park-medieval-ornamental-unsymmetric-D-20.c3dg"
TMPF="b.cfdg.tmp"
PATTERN=RYY
for ff in {20..26} ; do
  cat "$FILE" |sed "s/$PATTERN/$ff/g" > "$TMPF"  & kontecli -f"$TMPF" -db$(printf "%03i" $ff).png --variationAAA
done
