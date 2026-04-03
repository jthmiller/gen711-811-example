#!/bin/bash

primer="16s_V4-V5"
projname="YOURPROJ_${primer}"

## Classifiy
refreads=${refdbs/16s/ref_seqs_16S_V4-V5.qza}
reftax=${refdbs/16s/99_otus_16S_taxonomy.qza}
sklearn=${refdbs/16s/silva_99_otus_16S_nb-classifier.qza}

## copied from qiime2_parameters.sh
maxaccepts=10
query_cov=0.75 
perc_identity=0.75 
weak_id=0.65

qiime feature-classifier classify-hybrid-vsearch-sklearn \
  --i-query results/${projname}_rep-seqs.qza \
  --i-classifier ${sklearn} \
  --i-reference-reads ${refreads} \
  --i-reference-taxonomy  ${reftax} \
  --p-threads ${threads} \
  --p-query-cov ${query_cov} \
  --p-perc-identity ${perc_identity} \
  --p-maxrejects all \
  --p-maxaccepts ${maxaccepts} \
  --p-maxhits all \
  --p-min-consensus 0.51 \
  --p-confidence 0.7 \
  --o-classification results/${projname}_hybrid_taxonomy