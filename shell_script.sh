#!/bin/bash

## Run fastqc on one of the samples
cd /mydir/fastqs
fastqc SRR000001.fastq

## Move the html file to the results folder
mv SRR000001_fastqc.html ../results

## This performs trimming
cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC -o SRR000001_trimmed.fastq SRR000001.fastq
 
## This command gets per base cov 
qiime import --type 'SampleData[PairedEndSequencesWithQuality]' --input-path /mydir/fastqs --input-format CasavaOneEightSingleLanePerSampleDirFmt --output-path /mydir/seqs.qza
