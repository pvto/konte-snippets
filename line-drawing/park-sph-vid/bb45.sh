#!/bin/bash

FILE="park-medieval-ornamental-unsymmetric-D-45.c3dg"
TMPF="b.cfdg.tmp"
PATTERN=RYY
for ff in {45..51} ; do
  cat "$FILE" |sed "s/$PATTERN/$ff/g" > "$TMPF"  & kontecli -f"$TMPF" -db$(printf "%03i" $ff).png --variationAAA
done
