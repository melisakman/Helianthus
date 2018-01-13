#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/merged_Nov2017
#SBATCH -J concatVCF
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=64000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/concat_vcf.out
#SBATCH -e /global/home/users/makman/GATK/outs/concat_vcf.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load vcftools/0.1.15

vcf-concat *.vcf.gz | gzip -c > merged_NVC.vcf.gz

