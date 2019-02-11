#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis
#SBATCH -J bedass
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
module load bcftools/1.6
# bcftools +prune -n 1 -w 1000 testy_recode_snpid_fixed.vcf -Ov -o testy_recode_snpid_fixed_ldprunned_1000.vcf 

##2##
vcftools --vcf testy_recode_snpid_fixed_ldprunned_1000.vcf --keep bedassle/subset_10percluster.txt --max-missing-count 20 --012 --out bedassle/testy_recode_snpid_fixed_1Kprunned_subset10percluster


cd bedassle
python ~/git/Helianthus/shells/bedassle/fix_genotypeFile_bedassleFormat.py testy_recode_snpid_fixed_1Kprunned_subset10percluster.012 testy_recode_snpid_fixed_1Kprunned_subset10percluster.012.pos testy_recode_snpid_fixed_1Kprunned_subset10percluster.012.indv Arabidopsis_clusters.txt testy_recode_snpid_fixed_1Kprunned_subset10percluster_allele_counts.txt testy_recode_snpid_fixed_1Kprunned_subset10percluster_sample_size.txt
