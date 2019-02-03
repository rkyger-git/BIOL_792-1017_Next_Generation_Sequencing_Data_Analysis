#!/usr/bin/bash

#hisat-script-2
SAMPLES="ERR188044 ERR188104 ERR188234 ERR188245 ERR188257 ERR188273 ERR188337 ERR188383 ERR188401 ERR188428 ERR188454 ERR204916"

for SAMPLES in $SAMPLES; do
	hisat2 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/${SAMPLES}_chrX_1.fastq.gz -2 chrX_data/samples/${SAMPLES}_chrX_2.fastq.gz -S ${SAMPLES}_chrX.sam
done
