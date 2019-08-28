#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/xp-ehh/
#SBATCH -J xp-ehh
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/xpehh_chr10.out
#SBATCH -e /global/home/users/makman/vcftools/outs/xpehh_chr10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load r/3.4.2

vcftools --vcf chr10_SNP.vcf --keep lr_list.txt --recode --out chr10_SNP_lr.vcf
vcftools --vcf chr10_SNP.vcf --keep wd_list.txt --recode --out chr10_SNP_wd.vcf
vcftools --vcf chr10_SNP.vcf --keep cv_lr_list.txt --recode --out chr10_SNP_cv_lr.vcf

python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh_bug_fix/filter_hetero.py chr10_SNP_lr.vcf.recode.vcf chr10_SNP_lr_heteroFiltered.vcf
python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh_bug_fix/filter_hetero.py chr10_SNP_wd.vcf.recode.vcf chr10_SNP_wd_heteroFiltered.vcf
python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh_bug_fix/filter_hetero.py chr10_SNP_cv_lr.vcf.recode.vcf chr10_SNP_cv_lr_heteroFiltered.vcf

Rscript /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh/chr10.R

