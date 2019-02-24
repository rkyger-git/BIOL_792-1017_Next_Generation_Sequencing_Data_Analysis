#!/usr/bin/bash

#tdf-script-1.sh
SAMPLES="ERR188044 ERR188104 ERR188234 ERR188245 ERR188257 ERR188273 ERR188337 ERR188383 ERR188401 ERR188428 ERR188454 ERR204916"

for SAMPLES in $SAMPLES; do
    igvtools count ../${SAMPLES}_chrX.bam ${SAMPLES}_chrX.tdf hg38 
done
