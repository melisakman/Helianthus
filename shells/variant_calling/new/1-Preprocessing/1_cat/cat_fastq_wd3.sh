#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw
#SBATCH -J catfastqwd
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_wd3.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_wd3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


cp HI.1565.008.BioO_5.ann06-seWY_R1.fastq.gz ready/ann06-seWY_R1.fastq.gz
cp HI.1565.008.BioO_5.ann06-seWY_R2.fastq.gz ready/ann06-seWY_R2.fastq.gz
cp HI.1565.008.BioO_6.ann08-ceTN_R1.fastq.gz ready/ann08-ceTN_R1.fastq.gz 
cp HI.1565.008.BioO_6.ann08-ceTN_R2.fastq.gz ready/ann08-ceTN_R2.fastq.gz 
cp HI.1565.008.BioO_21.ann34-cwKS_R1.fastq.gz ready/ann34-cwKS_R1.fastq.gz
cp HI.1565.008.BioO_21.ann34-cwKS_R2.fastq.gz ready/ann34-cwKS_R2.fastq.gz
cp HI.1565.008.BioO_24.ann39-ncNE_R1.fastq.gz ready/ann39-ncNE_R1.fastq.gz
cp HI.1565.008.BioO_24.ann39-ncNE_R2.fastq.gz ready/ann39-ncNE_R2.fastq.gz

cp HI.4520.005.NEBNext_Index_30.Mex_A1516_R1.fastq.gz ready/Mex_A1516_R1.fastq.gz 
cp HI.4520.005.NEBNext_Index_37.Mex_A1517_R1.fastq.gz ready/Mex_A1517_R1.fastq.gz 
cp HI.4520.005.NEBNext_Index_38.Mex_A1572_R1.fastq.gz ready/Mex_A1572_R1.fastq.gz 
cp HI.4520.005.NEBNext_Index_39.Mex_A1574_R1.fastq.gz ready/Mex_A1574_R1.fastq.gz 
cp HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1.fastq.gz ready/Mex_Ann261_R1.fastq.gz

cp HI.4520.005.NEBNext_Index_30.Mex_A1516_R2.fastq.gz ready/Mex_A1516_R2.fastq.gz 
cp HI.4520.005.NEBNext_Index_37.Mex_A1517_R2.fastq.gz ready/Mex_A1517_R2.fastq.gz 
cp HI.4520.005.NEBNext_Index_38.Mex_A1572_R2.fastq.gz ready/Mex_A1572_R2.fastq.gz 
cp HI.4520.005.NEBNext_Index_39.Mex_A1574_R2.fastq.gz ready/Mex_A1574_R2.fastq.gz 
cp HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2.fastq.gz ready/Mex_Ann261_R2.fastq.gz





