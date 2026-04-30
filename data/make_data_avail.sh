

### Do not run: Make diatom data available for GEN711-811 students
mkdir -p /tmp/GEN711-811_data/MassDEP/fastqs /tmp/GEN711-811_data/MassDEP/metadata
cp \
  /home/users/jtm1171/cobb-data.sr.unh.edu/projects/251028_A01346_0193_AHCMCLDRX7_AMP-102825-TetraTech-MassDiatoms-2025/reads/*fastq.gz \
  /tmp/GEN711-811_data/MassDEP/fastqs/
cp metadata/rename-2025.tsv /tmp/GEN711-811_data/MassDEP/metadata/rename-2025.tsv
chmod +r -R /tmp/GEN711-811_data




#### DO NOT RUN: Make CYANO data available for GEN711-811 students
mkdir -p /tmp/GEN711-811_data/Cyanobacteria/fastqs /tmp/GEN711-811_data/Cyanobacteria/metadata

cp \
    /home/users/jtm1171/cobb-data.sr.unh.edu/projects/251222_A01346_0199_AHGFKJDRX7_AMP-12225-AM-Wolfeboro-Lakes-Cyanobacteria/reads/*fastq.gz \
    /tmp/GEN711-811_data/Cyanobacteria/fastqs/
cp \
    /home/users/jtm1171/cobb-data.sr.unh.edu/projects/251222_A01346_0199_AHGFKJDRX7_AMP-12225-AM-Wolfeboro-Lakes-Cyanobacteria/metadata/* \
    /tmp/GEN711-811_data/Cyanobacteria/metadata/


### MassDEP metadata
cp ~/MassDEP/rbcl/metadata/MA_2022-2023-2024-metadata.tsv /tmp/GEN711-811_data/MassDEP/metadata/MA_2022-2023-2024-metadata.tsv



### DO NOT RUN: NERRs 18s
mkdir -p /tmp/GEN711-811_data/NERRs/fastqs /tmp/GEN711-811_data/NERRs/metadata
cp \
  /home/users/jtm1171/old-home/watts/raw-data/cobb-data.sr.unh.edu/projects/240419_A01346_0131_AHTHT7DRX3_041924-AW-NERRABGBHE-18SNX030524/reads/*fastq.gz \
  /tmp/GEN711-811_data/NERRs/fastqs/


chmod +r -R /tmp/GEN711-811_data    

find  ~/old-home/watts/raw-data/ -name HEsbMay2023_S748_L002_R2_001.fastq.gz


cp /home/users/jtm1171/old-home/watts/raw-data/cobb-data.sr.unh.edu/projects/240419_A01346_0131_AHTHT7DRX3_041924-AW-NERRABGBHE-18SNX030524/reads/ \

## 18s metadata
cp /home/users/jtm1171/NERRs-18s-metabarcoding/metadata/update-swmp-realtime-sample-metadata.tsv /tmp/GEN711-811_data/NERRs/metadata/update-swmp-realtime-sample-metadata.tsv

### Make metadata 
ls /tmp/GEN711-811_data/NERRs/fastqs/ | sed "s/_S.*//g" | sort | uniq > /tmp/GEN711-811_data/NERRs/metadata/samplelist.txt
head -n1 update-swmp-realtime-sample-metadata.tsv > /tmp/GEN711-811_data/NERRs/metadata/metadata-update.tsv
grep -f /tmp/GEN711-811_data/NERRs/metadata/samplelist.txt update-swmp-realtime-sample-metadata.tsv >> /tmp/GEN711-811_data/NERRs/metadata/metadata-update.tsv

## CYANO metadata
cp /home/users/jtm1171/CYANO/16s/metadata/pico-mdat.tsv /tmp/GEN711-811_data/Cyanobacteria/CYANO/metadata/