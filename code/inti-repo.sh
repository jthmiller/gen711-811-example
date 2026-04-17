mkdir code/ 
mkdir plots/ 
mkdir -p data/fastqs
mkdir -p data/poly-G-trimmed
mkdir -p data/html
mkdir -p data/results
mkdir -p data/metadata

## if you made the poly-G-trimmed directory in your working directory, you can move it to the data directory. 
mv poly-G-trimmed/ data/
mv results/ data/

## make sure the poly-G-trimmed directory is in the .gitignore file, so that the large files are not tracked by git

## Copy the fastq files to the data/fastqs directory
## Before doing this, make sure the fastqs directory is on the .gitignore file, so that the large files are not tracked by git
cp /tmp/GEN711-811_data/MassDEP/fastqs/*.fastq.gz data/fastqs/


cp /tmp/GEN711-811_data/Cyanobacteria/CYANO/fastqs/*.fastq.gz data/fastqs/


## Proceed to 01_trim.sh
