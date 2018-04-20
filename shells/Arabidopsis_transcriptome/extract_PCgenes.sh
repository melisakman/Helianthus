#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis
#SBATCH -J snpID
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --mem=16000
#SBATCH --ntasks-per-node=1
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/extractPC1_genes.out
#SBATCH -e /global/home/users/makman/Arabidopsis/extractPC1_genes.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# python extract_variant_snpID.py testy_recode_snpid_fixed.vcf V1_ordered_10K.csv V1_top10K.vcf V1_top10K_pos.txt

python extract_variant_snpID.py testy_recode_snpid_fixed.vcf V1_ordered_2500.csv V1_top2500.vcf V1_top2500_pos.txt