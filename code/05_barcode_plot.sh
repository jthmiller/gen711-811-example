#!/bin/bash

## replace with the qiime2 environment youve been using 
conda activate qiime2-amplicon-2026.1


#!/bin/bash

### This script will create a barcode plot of the taxonomic composition of each sample. It will use the qiime2 feature-table and taxonomy files to create a stacked bar plot of the relative abundance of each taxon in each sample. The plot will be saved as a .png file in the results directory.

qiime taxa barplot \
  --i-table results/${projname}_table.qza \
  --i-taxonomy results/${projname}_hybrid_taxonomy.qza \
  --m-metadata-file data/metadata/metadata-update.tsv \
  --o-visualization results/${projname}_taxa_barplot.qzv

## To view the interactive barplot, you can use the qiime2 view command or upload the .qzv file to https://view.qiime2.org/ to interactively explore the plot. You can also export the plot as a .png file. Screenshots of the barplots work as well
## To download the .qzv file, right click on the file in vscode to download it to your local computer, then you can upload it to the qiime2 view website.


## Make a phylogenetic tree and run core metrics to get the alpha and beta diversity metrics for each sample. This will be used in the next script to create a PCoA plot of the beta diversity metrics.
qiime phylogeny align-to-tree-mafft-fasttree \
   --i-sequences results/${projname}_rep-seqs.qza \
   --o-alignment results/${projname}_aligned-rep-seqs \
   --o-masked-alignment results/${projname}_masked-aligned-rep-seqs.qza\
   --o-tree results/${projname}_unrooted-tree.qza\
   --o-rooted-tree results/${projname}_rooted-tree.qza\
   --p-n-threads 24

### Core Metrics (this will generate the alpha and beta diversity metrics for each sample, which will be used in the next script to create a PCoA plot of the beta diversity metrics)
### Choose one diversity ordination to vizualize in the readme of your github. Justify why you chose that one. You can also make multiple ordination plots if you want to compare the different beta diversity metrics.
qiime diversity core-metrics-phylogenetic \
    --i-phylogeny results/${projname}_rooted-tree.qza \
    --i-table results/${projname}_samp_filtered-table.qza \
    --p-with-replacement \
    --p-sampling-depth 500 \
    --m-metadata-file metadata/${projname}_metadata.tsv \
    --output-dir results/${projname}_core-metrics-results

