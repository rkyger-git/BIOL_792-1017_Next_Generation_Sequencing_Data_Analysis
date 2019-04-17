#!/usr/bin/bash

#pombe-stringtie-abundances-2.sh
SAMPLES="SRR546421-WT-Rep1 SRR546424-WT-Rep2 SRR546422-WT-DTT-Rep1 SRR546425-WT-DTT-Rep2"

for SAMPLES in $SAMPLES; do
    stringtie ${SAMPLES}.bam -G pombe-merged-2.gtf -o fixed-mstrg/ballgown/${SAMPLES}/${SAMPLES}.gtf -B -e
done
