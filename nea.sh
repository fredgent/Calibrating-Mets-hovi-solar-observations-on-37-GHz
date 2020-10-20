#!/bin/sh
pngtopnm nea1311582408.png        |pnmcut -top 52 -bottom -40 > tmp1.pnm
pngtopnm nea1467696746.png        |pnmcut -top 52 -bottom -40 > tmp2.pnm
pngtopnm nea1467696746_closeup.png|pnmcut -top 52             > tmp3.pnm
pnmcat -topbottom -white tmp1.pnm tmp2.pnm tmp3.pnm|pnmcrop -white|pnmtopng > nea.png
