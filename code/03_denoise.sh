

primer="16s_V4-V5"
projname="YOURPROJ_${primer}"




    
    cutadapt_config="--p-front-f $fw --p-front-r $rv"
    
    ## denoise
    polyg_len=200
    overlap=10


    ## trunc
    trunclenf=220
    trunclenr=215
    
    ## trim
    trimleftf=0
    trimleftr=0

    min=350
    max=430


echo "begin denoise..."


qiime dada2 denoise-paired \
    --i-demultiplexed-seqs results/${run}_demux_cutadapt.qza  \
    --p-trunc-len-f ${trunclenf} \
    --p-trunc-len-r ${trunclenr} \
    --p-trim-left-f ${trimleftf} \
    --p-trim-left-r ${trimleftr} \
    --p-n-threads ${threads} \
    --p-pooling-method 'pseudo' \
    --p-min-overlap ${overlap} \
    --p-allow-one-off \
    --o-denoising-stats results/${run}_dns \
    --o-table results/${run}_table \
    --o-representative-sequences results/${run}_rep-seqs \
