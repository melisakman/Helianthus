#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J xp-ehh
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/xpehh_chr06.out
#SBATCH -e /global/home/users/makman/vcftools/outs/xpehh_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load r/3.4.2

# vcftools --vcf chr06_SNP.vcf --keep lr_list.txt --recode --out chr06_SNP_lr.vcf
# vcftools --vcf chr06_SNP.vcf --keep wd_list.txt --recode --out chr06_SNP_wd.vcf
# vcftools --vcf chr06_SNP.vcf --keep cv_lr_list.txt --recode --out chr06_SNP_cv_lr.vcf
python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh_bug_fix/filter_hetero.py chr06_SNP_lr.vcf.recode.vcf chr06_SNP_lr_heteroFiltered.vcf
python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh_bug_fix/filter_hetero.py chr06_SNP_wd.vcf.recode.vcf chr06_SNP_wd_heteroFiltered.vcf
python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/xp-ehh_bug_fix/filter_hetero.py chr06_SNP_cv_lr.vcf.recode.vcf chr06_SNP_cv_lr_heteroFiltered.vcf


Rscript /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/xp-ehh/chr06.R

