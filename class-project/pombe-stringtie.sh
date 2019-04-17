#!/usr/bin/bash

#pombe-stringtie.sh
SAMPLES="SRR546421-WT-Rep1 SRR546424-WT-Rep2 SRR546422-WT-DTT-Rep1 SRR546425-WT-DTT-Rep2"

for SAMPLES in $SAMPLES; do
    stringtie ${SAMPLES}.bam -G genome-data/spombe-genes.gtf -l ${SAMPLES} -o ${SAMPLES}.gtf 
done

#stringtie --merge sp-mergelist.txt -G genome-data/spombe-genes.gtf -o pombe-merged.gtf