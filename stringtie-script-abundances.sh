#!/usr/bin/bash

#stringtie-script-abundances.sh
SAMPLES="ERR188044 ERR188104 ERR188234 ERR188245 ERR188257 ERR188273 ERR188337 ERR188383 ERR188401 ERR188428 ERR188454 ERR204916"

for SAMPLES in $SAMPLES; do
    stringtie ${SAMPLES}_chrX.bam -G stringtie_merged.gtf -o ballgown/${SAMPLES}/${SAMPLES}_chrX.gtf -B -e
done
