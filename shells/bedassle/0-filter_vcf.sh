#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis
#SBATCH -J filtvcf
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --mem=16000
#SBATCH --ntasks-per-node=1
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/filter_vcf.out
#SBATCH -e /global/home/users/makman/Arabidopsis/filter_vcf.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

vcftools --vcf testy_recode_snpid_fixed.vcf --keep Accession_ForBEDASSLE.txt --max-missing-count 0 --012 --out testy_recode_snpid_fixed_bedassle.txt