#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/bedassle
#SBATCH -J bedass
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=172:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/filter_vcf.out
#SBATCH -e /global/home/users/makman/Arabidopsis/filter_vcf.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load bcftools/1.6
bcftools +prune -n 1 -w 5000 testy_recode_snpid_fixed.vcf -Ov -o testy_recode_snpid_fixed_ldprunned_5K.vcf 

##2##
vcftools --vcf testy_recode_snpid_fixed_ldprunned_5K.vcf --012 --out testy_recode_snpid_fixed_ldprunned_5K
# --max-missing-count 20

python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset1.txt subset1_5K_allele_counts.txt subset1_5K_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset2.txt subset2_5K_allele_counts.txt subset2_5K_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset3.txt subset3_5K_allele_counts.txt subset3_5K_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset4.txt subset4_5K_allele_counts.txt subset4_5K_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_5K.012 testy_recode_snpid_fixed_ldprunned_5K.012.pos testy_recode_snpid_fixed_ldprunned_5K.012.indv accession_subset5.txt subset5_5K_allele_counts.txt subset5_5K_sample_size.txt
