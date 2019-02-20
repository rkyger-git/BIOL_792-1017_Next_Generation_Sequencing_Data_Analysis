#!/usr/bin/bash

#stringtie-script-1.sh
SAMPLES="ERR188044 ERR188104 ERR188234 ERR188245 ERR188257 ERR188273 ERR188337 ERR188383 ERR188401 ERR188428 ERR188454 ERR204916"

for SAMPLES in $SAMPLES; do
    stringtie ${SAMPLES}_chrX.bam -G chrX_data/genes/chrX.gtf -l ${SAMPLES} -o ${SAMPLES}_chrX.gtf 
done

#stringtie --merge chrX_data/mergelist.txt -G chrX_data/genes/chrX.gtf -o stringtie_merged.gtf 
