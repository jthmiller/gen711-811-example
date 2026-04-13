### Data and locations 

Fastq and metadata locations:

- Metabarcoding of cyanobacteria communities from New England Lakes over a summer (16s v4-v5).
    - /tmp/GEN711-811_data/Cyanobacteria
- Metabarcoding to compare fish species across US estuaries (12s MiFish).
    - /tmp/GEN711-811_data/NERRs
    - THIS HAS BEEN CHANGED! 
    - Now 18s (which can include fish) that compares estuaries between Apalachicola Bay, Hawaii, and Great Bay
    - See /tmp/GEN711-811_data/NERRs/metadata/metadata-update.tsv for more info
- Metabarcoding of Algae (Diatoms) to compare high and low quality streams (18s or RBCL).
    - /tmp/GEN711-811_data/MassDEP
    - See Diatoms_Info.sh
- Fecal microbiota transplant (FMT) study. Metabarcoding of human guts (16s). Most of the support for this project is through qiime2's website turtorials
    - To get the data, run this from within your repo. Do not commit
    - ```wget -P "data/fastqs" -O "fmt-tutorial-demux-1.qza" "https://data.qiime2.org/2024.10/tutorials/fmt/fmt-tutorial-demux-1-10p.qza"```
