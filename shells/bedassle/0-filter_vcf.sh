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


vcftools --vcf testy_recode_snpid_fixed_ldprunned_2K.vcf --keep bedassle/accession_subset1.txt --max-missing-count 10 --012 --out bedassle/testy_recode_snpid_fixed_prunned_subset1_10
vcftools --vcf testy_recode_snpid_fixed_ldprunned_2K.vcf --keep bedassle/accession_subset2.txt --max-missing-count 10 --012 --out bedassle/testy_recode_snpid_fixed_prunned_subset2_10
vcftools --vcf testy_recode_snpid_fixed_ldprunned_2K.vcf --keep bedassle/accession_subset3.txt --max-missing-count 10 --012 --out bedassle/testy_recode_snpid_fixed_prunned_subset3_10
vcftools --vcf testy_recode_snpid_fixed_ldprunned_2K.vcf --keep bedassle/accession_subset4.txt --max-missing-count 10 --012 --out bedassle/testy_recode_snpid_fixed_prunned_subset4_10
vcftools --vcf testy_recode_snpid_fixed_ldprunned_2K.vcf --keep bedassle/accession_subset5.txt --max-missing-count 10 --012 --out bedassle/testy_recode_snpid_fixed_prunned_subset5_10

