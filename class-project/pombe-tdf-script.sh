#!/usr/bin/bash

#pombe-tdf-script.sh
SAMPLES="SRR546421-WT-Rep1 SRR546424-WT-Rep2 SRR546422-WT-DTT-Rep1 SRR546425-WT-DTT-Rep2"

for SAMPLES in $SAMPLES; do
    igvtools count ${SAMPLES}.bam ${SAMPLES}.tdf spombe_1.55 
done
