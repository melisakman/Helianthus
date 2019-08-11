#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J xp-ehh
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/xpehh_chr12.out
#SBATCH -e /global/home/users/makman/vcftools/outs/xpehh_chr12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load r/3.4.2

vcftools --vcf chr12_SNP.vcf --keep lr_list.txt --recode --out chr12_SNP_lr.vcf
vcftools --vcf chr12_SNP.vcf --keep wd_list.txt --recode --out chr12_SNP_wd.vcf
vcftools --vcf chr12_SNP.vcf --keep cv_lr_list.txt --recode --out chr12_SNP_cv_lr.vcf


Rscript /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh/chr12.R

