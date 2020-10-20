#!/bin/sh
R=231
L=209
pngtopnm map1468417002.png|pnmcut -bottom -160 -right -$R > tmp1.pnm
pngtopnm map1468763294.png|pnmcut -left    $L  -right -$R > tmp2.pnm
pngtopnm map1468907874.png|pnmcut -bottom -160 -left   $L > tmp3.pnm
pnmcat -leftright -jtop tmp1.pnm tmp2.pnm tmp3.pnm|pnmcrop -white|pnmtopng > maptrack1.png
rm tmp1.pnm tmp2.pnm tmp3.pnm


