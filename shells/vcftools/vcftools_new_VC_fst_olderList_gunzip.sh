#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered
#SBATCH -J gunzip
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_VC_fst15_gunzip.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_VC_fst15_gunzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17

gunzip HanXRQChr01_filter01.vcf.gz
gunzip HanXRQChr02_filter01_ordered.vcf.gz
gunzip HanXRQChr03_filter01_ordered.vcf.gz
gunzip HanXRQChr04_filter01_ordered.vcf.gz
gunzip HanXRQChr05_filter01_ordered.vcf.gz
gunzip HanXRQChr06_filter01_ordered.vcf.gz
gunzip HanXRQChr07_filter01_ordered.vcf.gz
gunzip HanXRQChr08_filter01_ordered.vcf.gz
gunzip HanXRQChr09_filter01_ordered.vcf.gz
gunzip HanXRQChr10_filter01_ordered.vcf.gz
gunzip HanXRQChr11_filter01_ordered.vcf.gz
gunzip HanXRQChr12_filter01_ordered.vcf.gz
gunzip HanXRQChr13_filter01_ordered.vcf.gz
gunzip HanXRQChr14_filter01_ordered.vcf.gz
gunzip HanXRQChr15_filter01_ordered.vcf.gz
gunzip HanXRQChr16_filter01_ordered.vcf.gz
gunzip HanXRQChr17_filter01_ordered.vcf.gz