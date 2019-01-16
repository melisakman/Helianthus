#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis
#SBATCH -J filtvcf
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/filter_vcf.out
#SBATCH -e /global/home/users/makman/Arabidopsis/filter_vcf.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
##tests below#
# vcftools --vcf testy_recode_snpid_fixed.vcf --keep Accession_ForBEDASSLE.txt --max-missing-count 10 --012 --out testy_recode_snpid_fixed_bedassle2

# vcftools --vcf testy_recode_snpid_fixed.vcf --keep Accession_ForBEDASSLE.txt --max-missing-count 30 --012 --out testy_recode_snpid_fixed_bedassle3

# vcftools --vcf testy_recode_snpid_fixed.vcf --keep bedassle/accession_subset1.txt --max-missing-count 10 --012 --out bedassle/testy_recode_snpid_fixed_subset1_10
# vcftools --vcf testy_recode_snpid_fixed.vcf --keep bedassle/accession_subset1.txt --max-missing-count 20 --012 --out bedassle/testy_recode_snpid_fixed_subset1_20
# vcftools --vcf testy_recode_snpid_fixed.vcf --keep bedassle/accession_subset1.txt --max-missing-count 30 --012 --out bedassle/testy_recode_snpid_fixed_subset1_30
# vcftools --vcf testy_recode_snpid_fixed.vcf --keep bedassle/accession_subset1.txt --max-missing-count 5 --012 --out bedassle/testy_recode_snpid_fixed_subset1_5
# vcftools --vcf testy_recode_snpid_fixed.vcf --keep bedassle/accession_subset1.txt --max-missing-count 0 --012 --out bedassle/testy_recode_snpid_fixed_subset1_0

##tests above###
##1##

module load bcftools/1.6
bcftools +prune -n 1 -w 1000 testy_recode_snpid_fixed.vcf -Ov -o testy_recode_snpid_fixed_ldprunned_1000.vcf 

##2##
# vcftools --vcf testy_recode_snpid_fixed_ldprunned_1000.vcf --keep bedassle/accession_subset1.txt --max-missing-count 20 --012 --out bedassle/testy_recode_snpid_fixed_1Kprunned_subset1_20
# vcftools --vcf testy_recode_snpid_fixed_ldprunned_1000.vcf --keep bedassle/accession_subset2.txt --max-missing-count 20 --012 --out bedassle/testy_recode_snpid_fixed_1Kprunned_subset2_20
# vcftools --vcf testy_recode_snpid_fixed_ldprunned_1000.vcf --keep bedassle/accession_subset3.txt --max-missing-count 20 --012 --out bedassle/testy_recode_snpid_fixed_1Kprunned_subset3_20
# vcftools --vcf testy_recode_snpid_fixed_ldprunned_1000.vcf --keep bedassle/accession_subset4.txt --max-missing-count 20 --012 --out bedassle/testy_recode_snpid_fixed_1Kprunned_subset4_20
# vcftools --vcf testy_recode_snpid_fixed_ldprunned_1000.vcf --keep bedassle/accession_subset5.txt --max-missing-count 20 --012 --out bedassle/testy_recode_snpid_fixed_1Kprunned_subset5_20

##3##
cd bedassle
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_1Kprunned_subset1_20 testy_recode_snpid_fixed_1Kprunned_subset1_20.pos testy_recode_snpid_fixed_1Kprunned_subset1_20.indv testy_recode_snpid_fixed_1Kprunned_subset1_20_bedassle.txt