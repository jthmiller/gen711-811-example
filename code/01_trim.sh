#!/bin/bash

conda activate genomics

cd ~/myrepo

## make output directories. Only need to do this once. 
mkdir -p poly-G-trimmed html results metadata 

### New polyG filter only
cd fastqs

### --poly-a is now availible
 for f in *R1_001.fastq.gz ; do 
 
    r=$(echo $f | sed 's/_R1_/_R2_/g')
     
     fastp \
     --in1 $f \
     --in2 $r \
     --html html/${f%_L002_R1_001.fastq.gz}.html \
     --out1 poly-G-trimmed/$f \
     --out2 poly-G-trimmed/$r \
     --cut_tail \
     --poly_g_min_len 4 \
     --cut_tail_mean_quality 25 \
     --cut_tail_window_size 2 \
     --disable_adapter_trimming \
     -l ${polyg_len} \
     -g -Q
     
     echo $f
     
 done > fastp.out 2>&1
 
for fq in *R1_001.fastq.gz ; do 
    echo "$(basename $fq | sed 's/_L002_R1_001.fastq.gz//' ) $(zcat $fq | grep '^@' | wc -l) $(zcat poly-G-trimmed/$fq | grep '^@' | wc -l)" 
done | sort -k2 -h | awk -v OFS='\t' '{ print $1,$2,$3 }' > ../qiime_out/readcounts

## Remove empty files before qiime import
find poly-G-trimmed/ -size 0 -print -delete

## Proceed to 02_cutadapt.sh
