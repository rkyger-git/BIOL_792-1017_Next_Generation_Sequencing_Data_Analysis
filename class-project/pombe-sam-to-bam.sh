#!/usr/bin/bash

#pombe-sam-to-bam.sh
SAMPLES="SRR546421-WT-Rep1 SRR546424-WT-Rep2 SRR546422-WT-DTT-Rep1 SRR546425-WT-DTT-Rep2"

for SAMPLES in $SAMPLES; do
	samtools sort ${SAMPLES}.sam -o ${SAMPLES}.bam
done

