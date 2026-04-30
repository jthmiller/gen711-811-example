


## For this project, a sample rename is needed after you have generated the feature table. This is because the sample names in the original metadata file are not compatible with QIIME 2, and they need to be renamed to match the sample names in the feature table. The following command will rename the samples in the feature table using the metadata file:
qiime feature-table group \
  --i-table results/${projname}_table.qza \
  --p-axis sample \
  --m-metadata-file metadata/rename-2025.tsv \
  --m-metadata-column Newname \
  --p-mode sum \
  --o-grouped-table results/MassDEP_2025-renamed_table.qza

qiime feature-table group \
  --i-table runs/MassDiatoms-2025/qiime_out/MassDiatoms-2025_table.qza \
  --p-axis sample \
  --m-metadata-file metadata/rename-2025.tsv \
  --m-metadata-column Newname \
  --p-mode sum \
  --o-grouped-table results/MassDEP_2025-renamed_table.qza

qiime feature-table filter-samples \
  --i-table results/MassDEP_2022-2025_rbcl_table.qza \
  --m-metadata-file metadata/MassDEP_2022-2025-renamed.tsv \
  --o-filtered-table results/filtered_MassDEP_2022-2025_rbcl_table.qza