#!/bin/bash
primer="16s_V4-V5"
projname="YOURPROJ_${primer}"
## example: projname="Cyanobac_16s_V4-V5"

## copied from qiime2_parameters.sh
fw='^GTGYCAGCMGCCGCGGTAA'	
rv='^CCGYCAATTYMTTTRAGTTT'
cutadapt_config="--p-front-f $fw --p-front-r $rv"

### See qiime2_parameters.sh for cutadapt parameters and 01_trim.sh for polyG filter parameters.

### import 
qiime tools import \
    --type "SampleData[PairedEndSequencesWithQuality]"  \
    --input-format CasavaOneEightSingleLanePerSampleDirFmt \
    --input-path reads/poly-G-trimmed \
    --output-path results/${projname}_demux 

qiime cutadapt trim-paired \
    --i-demultiplexed-sequences results/${projname}_demux.qza \
    --p-error-rate 0.12 \
    --o-trimmed-sequences results/${projname}_demux_cutadapt.qza \
    --p-cores 4 \
    "${cutadapt_config}" \
    --p-discard-untrimmed \
    --p-match-adapter-wildcards \
    --verbose 

qiime demux summarize \
    --i-data results/${projname}_demux_cutadapt.qza \
    --o-visualization results/${projname}_demux_cutadapt.qzv



