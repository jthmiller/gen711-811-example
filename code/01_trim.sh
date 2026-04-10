#!/bin/bash
conda activate genomics

cd ~/myrepo

## make output directories. Only need to do this once. 
mkdir -p poly-G-trimmed html results metadata data/fastqs

### New polyG filter only
cd data/fastqs

polyg_len=200 ## copied from qiime2_parameters.sh

### Run polyG filter. This will remove polyG tails and also filter out reads that are too short after trimming.
chmod +x ../code/polyGfilter.sh

../code/polyGfilter.sh ${polyg_len}

../code/polyGfilter.sh 200 
## or, similarly, you could run it like this: 
## ./code/polyGfilter.sh 200

## Remove empty files before qiime import
find poly-G-trimmed/ -size 0 -print -delete

## Proceed to 02_cutadapt.sh
