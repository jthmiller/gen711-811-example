


run="${1}"
dest_dir="$( realpath ${2} )"
readpath="$( realpath ${3} )"
threads="${4}"
primer="${5}"
reads="${6}"


### import 
qiime tools import \
    --type "SampleData[PairedEndSequencesWithQuality]"  \
    --input-format CasavaOneEightSingleLanePerSampleDirFmt \
    --input-path reads/poly-G-trimmed \
    --output-path qiime_out/${run}_demux 

qiime cutadapt trim-paired \
    --i-demultiplexed-sequences qiime_out/${run}_demux.qza \
    --p-error-rate 0.12 \
    --o-trimmed-sequences qiime_out/${run}_demux_cutadapt.qza \
    --p-cores 16 \
    "${cutadapt_config}" \
    --p-discard-untrimmed \
    --p-match-adapter-wildcards \
    --verbose 

qiime demux summarize \
    --i-data qiime_out/${run}_demux_cutadapt.qza \
    --o-visualization qiime_out/${run}_demux_cutadapt.qzv



