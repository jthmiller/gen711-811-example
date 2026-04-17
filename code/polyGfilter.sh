#!/bin/bash

echo -e "begin polyG filter...\n"
echo  -e "polyG filter length threshold: ${1}\n"
echo  -e "polyG filter will remove polyG tails and also filter out reads that are too short after trimming.\n"

 for fq in data/fastqs/*R1_001.fastq.gz ; do 
    f=$(basename $fq)
    r=$(echo $f | sed 's/_R1_/_R2_/g')

    echo $f
    echo $r
    echo $fq

     
     fastp \
     --in1 data/fastqs/$f \
     --in2 data/fastqs/$r \
     --html data/html/${f%_L002_R1_001.fastq.gz}.html \
     --out1 data/poly-G-trimmed/$f \
     --out2 data/poly-G-trimmed/$r \
     --cut_tail \
     --poly_g_min_len 4 \
     --cut_tail_mean_quality 25 \
     --cut_tail_window_size 2 \
     --disable_adapter_trimming \
     -l 200 \
     -g -Q
     
     echo $f
     
 done > fastp.out 2>&1
 

echo  -e "info in fastp.out\n"
echo  -e "\npolyG filter complete.\n"
echo  -e "counting reads before and after polyG filter...\n"

 for fq in data/fastqs/*R1_001.fastq.gz ; do 
     f=$(basename $fq)
     echo  -e  "$(echo $f | sed 's/_L002_R1_001.fastq.gz//' ) $(zcat $fq | grep '^@' | wc -l) $(zcat data/poly-G-trimmed/$f | grep '^@' | wc -l)" 
 done | sort -k2 -h | awk -v OFS='\t' '{ print $1,$2,$3 }' > polyG_filter_read_counts.tsv