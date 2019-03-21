#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/bedassle/final
#SBATCH -J badass2
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/bedassle_all.out
#SBATCH -e /global/home/users/makman/Arabidopsis/bedassle_all.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load bcftools/1.6
module load r/3.5.1

# bcftools +prune -n 1 -w 5000 ../../testy_recode_snpid_fixed.vcf -Ov -o testy_recode_snpid_fixed_ldprunned_5K.vcf 

##2##
# vcftools --vcf testy_recode_snpid_fixed_ldprunned_5K.vcf --012 --out testy_recode_snpid_fixed_ldprunned_5K
# --max-missing-count 20

# python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv all_samples.txt allsamples_5K_allele_counts.txt allsamples_5K_sample_size.txt


# 
Rscript ~/git/Helianthus/shells/bedassle/subsets/all.R