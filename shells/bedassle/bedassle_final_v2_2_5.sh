#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis/bedassle/final
#SBATCH -J badass2
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/bedassle2_5.out
#SBATCH -e /global/home/users/makman/Arabidopsis/bedassle2_5.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load bcftools/1.6
module load r/3.5.1
# bcftools +prune -n 1 -w 5000 ../../testy_recode_snpid_fixed.vcf -Ov -o testy_recode_snpid_fixed_ldprunned_5K.vcf 

##2##
# vcftools --vcf testy_recode_snpid_fixed_ldprunned_5K.vcf --012 --out testy_recode_snpid_fixed_ldprunned_5K
# --max-missing-count 20

# python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset1.txt subset1_5K_allele_counts.txt subset1_5K_sample_size.txt
# python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset2.txt subset2_5K_allele_counts.txt subset2_5K_sample_size.txt
# python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset3.txt subset3_5K_allele_counts.txt subset3_5K_sample_size.txt
# python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset4.txt subset4_5K_allele_counts.txt subset4_5K_sample_size.txt
# python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset5.txt subset5_5K_allele_counts.txt subset5_5K_sample_size.txt
# R
# Rserve(args="--no-save")
# 
# install.packages("BEDASSLE")
# library(BEDASSLE)
# setwd("/clusterfs/rosalind/users/makman/Arabidopsis/bedassle/final")
# 
# count = read.table("subset1_5K_allele_counts.txt", h=F)
# dim(count)
# count = as.matrix(count[1:2081])
# dim(count)
# sample = read.table("subset1_5K_sample_size.txt", h=F)
# sample = as.matrix(sample[1:2081])
# dim(sample)
# climate = load("subset1_envi.RData")
# 
Rscript ~/git/Helianthus/shells/bedassle/bedassle2_v5.R