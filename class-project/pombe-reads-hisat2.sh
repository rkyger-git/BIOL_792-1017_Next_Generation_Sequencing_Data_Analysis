#!/usr/bin/bash

#pombe-reads-hisat2.sh
SAMPLES="SRR546421-WT-Rep1 SRR546424-WT-Rep2 SRR546422-WT-DTT-Rep1 SRR546425-WT-DTT-Rep2"

for SAMPLES in $SAMPLES; do
	hisat2 -p 2 --dta -x spombe-index/spombe-index -U ${SAMPLES}.fastq.gz -S ${SAMPLES}.sam
done

