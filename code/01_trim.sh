#!/bin/bash
conda activate genomics

# cd ~/myrepo

polyg_len=200 ## copied from qiime2_parameters.sh

### Run polyG filter. This will remove polyG tails and also filter out reads that are too short after trimming.
chmod +x code/polyGfilter.sh

### This is the same as..
code/polyGfilter.sh "${polyg_len}"
### this
## code/polyGfilter.sh 200 

## Remove empty files before qiime import
find data/poly-G-trimmed/ -size 0 -print -delete

## Proceed to 02_cutadapt.sh