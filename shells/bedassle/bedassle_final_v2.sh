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
# bcftools +prune -n 1 -w 1000 testy_recode_snpid_fixed.vcf -Ov -o testy_recode_snpid_fixed_ldprunned_1000.vcf 

##2##
vcftools --vcf testy_recode_snpid_fixed_ldprunned_1000.vcf --max-missing-count 20 --012 --out testy_recode_snpid_fixed_ldprunned_1000


cd bedassle
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_1000.012 testy_recode_snpid_fixed_ldprunned_1000.012.pos testy_recode_snpid_fixed_ldprunned_1000.012.indv accession_subset1.txt subset1_allele_counts.txt subset1_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_1000.012 testy_recode_snpid_fixed_ldprunned_1000.012.pos testy_recode_snpid_fixed_ldprunned_1000.012.indv accession_subset2.txt subset2_allele_counts.txt subset2_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_1000.012 testy_recode_snpid_fixed_ldprunned_1000.012.pos testy_recode_snpid_fixed_ldprunned_1000.012.indv accession_subset3.txt subset3_allele_counts.txt subset3_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_1000.012 testy_recode_snpid_fixed_ldprunned_1000.012.pos testy_recode_snpid_fixed_ldprunned_1000.012.indv accession_subset4.txt subset4_allele_counts.txt subset4_sample_size.txt
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile.py testy_recode_snpid_fixed_ldprunned_1000.012 testy_recode_snpid_fixed_ldprunned_1000.012.pos testy_recode_snpid_fixed_ldprunned_1000.012.indv accession_subset5.txt subset5_allele_counts.txt subset5_sample_size.txt

