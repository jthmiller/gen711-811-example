#!/bin/bash

## qiime2 parameters for each metabarcode


## RBCL
    
    fw1="^AGGTGAAGTAAAAGGTTCWTACTTAAA"
    fw2="^AGGTGAAGTTAAAGGTTCWTAYTTAAA"
    fw3="^AGGTGAAACTAAAGGTTCWTACTTAAA"
 
    rv1="^CCTTCTAATTTACCWACWACTG"
    rv2="^CCTTCTAATTTACCWACAACAG"

    cutadapt_config="--p-front-f $fw1 --p-front-f $fw2 --p-front-f $fw3 --p-front-r $rv1 --p-front-r $rv2"


    polyg_len=150
    
    ## denoise
    ## trunc
    trunclenr=200
    trunclenf=200
    ## trim
    trimleftf=0
    trimleftr=0

    overlap=12

    ## taxonomy
    maxaccepts=all
    query_cov=0.80 
    perc_identity=0.80
    weak_id=0.50 
    #tophit_perc_identity=0.90

    refreads=${refreads:-/home/unhAW/jtmiller/watts/ref-database/rbcl/diat_barcode_v10_263bp-seqs.qza}
    reftax=${reftax:-/home/unhAW/jtmiller/watts/ref-database/rbcl/diat_barcode_v10_263bp-tax.qza}
    blastdb=${blastdb:-/home/unhAW/jtmiller/watts/ref-database/rbcl/blast_diat.barcode}
    sklearn=${sklearn:-/home/unhAW/jtmiller/watts/ref-database/rbcl/diat_barcode_v10_263bp-sklearn-classifier.qza}


### MiFish

    fw='^GTCGGTAAAACTCGTGCCAGC'	
    rv='^CATAGTGGGGTATCTAATCCCAGTTTG'

    cutadapt_config="--p-front-f $fw --p-front-r $rv"
  
    ## denoise
    polyg_len=100

    ## trunc
    trunclenf=110
    trunclenr=105

    ## trim
    trimleftf=0
    trimleftr=0

    overlap=10

    ## taxonomy
    maxaccepts=all
    query_cov=0.90 
    perc_identity=0.90
    weak_id=0.80 
    tophit_perc_identity=0.90

    refreads=${refreads:-/home/users/jtm1171/refdbs/mifish/june_2025/mitofish+DAR-65match.fasta.qza}
    reftax=${reftax:-/home/users/jtm1171/refdbs/mifish/june_2025/mitofish+DAR-65.tax.qza}
    blastdb=${blastdb:-/home/share/databases/ncbi_nt/nt}
    sklearn=${sklearn:-/home/users/jtm1171/refdbs/mifish/june_2025/mitofish+DAR-65-lenght-250_classifier.qza}


    echo "running mifsh"
    echo "refreads: $refreads"
    echo "reftax: $reftax"
    echo "sklearn: $sklearn"
    echo "blastdb: $blastdb"

    min=99
    max=251


### 18s
	
    overlap=10
    fw='GTACACACCGCCCGTC'
    rv='TGATCCTTCTGCAGGTTCACCTAC'

    cutadapt_config="--p-front-f $fw --p-front-r $rv"

    echo $cutadapt_config

    ## denoise
    polyg_len=85

    ## taxonomy
    maxaccepts=10
    query_cov=0.8 
    perc_identity=0.90 
    weak_id=0.80
    
    ## trunc
    trunclenf=85 
    trunclenr=85

    ## trim
    trimleftf=0
    trimleftr=0

    reftax=${reftax:-/home/users/jtm1171/refdbs/18s/SILVA/silva-138-99-tax.qza}
    refreads=${refreads:-/home/users/jtm1171/refdbs/18s/SILVA/silva-138-99-seqs-pid_0.65-extracted.qza}
    sklearn=${sklearn:-/home/users/jtm1171/refdbs/18s/SILVA/silva-138-99-seqs-pid_0.65-classifier.qza}
 
    min=50
    max=175


### 16s_V4-V5 

    ## 515F-926R
    fw='^GTGYCAGCMGCCGCGGTAA'	
    rv='^CCGYCAATTYMTTTRAGTTT'
    
    cutadapt_config="--p-front-f $fw --p-front-r $rv"
    
    ## denoise
    polyg_len=200
    overlap=10

    ##taxonomy
    maxaccepts=10
    query_cov=0.75 
    perc_identity=0.75 
    weak_id=0.65

    ## trunc
    trunclenf=220
    trunclenr=215
    
    ## trim
    trimleftf=0
    trimleftr=0

    min=350
    max=430


    refreads=${refreads:-/home/users/jtm1171/refdbs/16s/ref_seqs_16S_V4-V5.qza}
    reftax=${reftax:-/home/users/jtm1171/refdbs/16s/99_otus_16S_taxonomy.qza}
    sklearn=${sklearn:-/home/users/jtm1171/refdbs/16s/silva_99_otus_16S_nb-classifier.qza}


## leray_co1

	## primer sequence
	fw='^GGWACWGGWTGAACWGTWTAYCCYCC'
	rv='^TANACYTCNGGRTGNCCRAARAAYCA'

	cutadapt_config="--p-front-f $fw --p-front-r $rv"
	##fastp param
	polyg_len=175

	## denoise
	## trunc
	trunclenr=185
	trunclenf=185
	## trim
	trimleftf=0
	trimleftr=0
    
	## taxonomy
	maxaccepts=10
	query_cov=0.80 
	perc_identity=0.90
	weak_id=0.80 
	tophit_perc_identity=0.90

    refreads="/home/users/jtm1171/refdbs/COI/CRUX/COI_.fasta.qza"
    reftax="/home/users/jtm1171/refdbs/COI/CRUX/COI_taxonomy.qza"
    sklearn="/home/users/jtm1171/refdbs/COI/CRUX/COI_crux_nb-classifier.qza"

    min=150
    max=360






