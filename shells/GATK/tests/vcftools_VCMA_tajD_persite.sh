#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J vcfTajD
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH --mem=24000
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_tajD_persite.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_tajD_persite.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
vcftools --gzvcf vcf-isec_chr01/chr01_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr01_persite
vcftools --gzvcf vcf-isec_chr02/chr02_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr02_persite
vcftools --gzvcf vcf-isec_chr03/chr03_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr03_persite
vcftools --gzvcf vcf-isec_chr04/chr04_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr04_persite
vcftools --gzvcf vcf-isec_chr05/chr05_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr05_persite
vcftools --gzvcf vcf-isec_chr06/chr06_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr06_persite
vcftools --gzvcf vcf-isec_chr07/chr07_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr07_persite
vcftools --gzvcf vcf-isec_chr08/chr08_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr08_persite
vcftools --gzvcf vcf-isec_chr09/chr09_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr09_persite
vcftools --gzvcf vcf-isec_chr10/chr10_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr10_persite
vcftools --gzvcf vcf-isec_chr11/chr11_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr11_persite
vcftools --gzvcf vcf-isec_chr12/chr12_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr12_persite
vcftools --gzvcf vcf-isec_chr13/chr13_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr13_persite
vcftools --gzvcf vcf-isec_chr14/chr14_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr14_persite
vcftools --gzvcf vcf-isec_chr15/chr15_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr15_persite
vcftools --gzvcf vcf-isec_chr16/chr16_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr16_persite
vcftools --gzvcf vcf-isec_chr17/chr17_intersect.vcf.gz --keep wd_list.txt --TajimaD 1 --out tajD/wd_TajD_chr17_persite
vcftools --gzvcf vcf-isec_chr01/chr01_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr01_persite
vcftools --gzvcf vcf-isec_chr02/chr02_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr02_persite
vcftools --gzvcf vcf-isec_chr03/chr03_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr03_persite
vcftools --gzvcf vcf-isec_chr04/chr04_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr04_persite
vcftools --gzvcf vcf-isec_chr05/chr05_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr05_persite
vcftools --gzvcf vcf-isec_chr06/chr06_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr06_persite
vcftools --gzvcf vcf-isec_chr07/chr07_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr07_persite
vcftools --gzvcf vcf-isec_chr08/chr08_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr08_persite
vcftools --gzvcf vcf-isec_chr09/chr09_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr09_persite
vcftools --gzvcf vcf-isec_chr10/chr10_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr10_persite
vcftools --gzvcf vcf-isec_chr11/chr11_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr11_persite
vcftools --gzvcf vcf-isec_chr12/chr12_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr12_persite
vcftools --gzvcf vcf-isec_chr13/chr13_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr13_persite
vcftools --gzvcf vcf-isec_chr14/chr14_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr14_persite
vcftools --gzvcf vcf-isec_chr15/chr15_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr15_persite
vcftools --gzvcf vcf-isec_chr16/chr16_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr16_persite
vcftools --gzvcf vcf-isec_chr17/chr17_intersect.vcf.gz --keep lr_list.txt --TajimaD 1 --out tajD/lr_TajD_chr17_persite
