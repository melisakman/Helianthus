#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis
#SBATCH -J filtvcf
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/filter_vcf.out
#SBATCH -e /global/home/users/makman/Arabidopsis/filter_vcf.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

# vcftools --vcf testy_recode_snpid_fixed.vcf --keep Accession_ForBEDASSLE.txt --max-missing-count 10 --012 --out testy_recode_snpid_fixed_bedassle2

vcftools --vcf testy_recode_snpid_fixed.vcf --keep Accession_ForBEDASSLE.txt --max-missing-count 30 --012 --out testy_recode_snpid_fixed_bedassle3