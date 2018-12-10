#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr17_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr17_kinship.err
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr17_kinship.out
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# chr01_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr02_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr03_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr04_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr05_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr06_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr07_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr08_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr09_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr10_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr11_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr12_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr13_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr14_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr15_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr16_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf \
# chr17_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf > all_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf
# 
# module load bio/vcftools/0.1.15
# 
# vcftools --vcf all_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf --out all_final_plink  --plink
# 
# python ../plink_ped_fixer.py ../samples_VQSR_domesticates_ethno.txt all_final_plink.ped all_final_plink_domesticates_ethno.ped
# 
# cp all_final_plink.map all_final_plink_domesticates_ethno.map



hapflk --file all_final_plink_domesticates_ethno --outgroup=Wild -p kinship/all/all_tree_kinship --ncpu 12 