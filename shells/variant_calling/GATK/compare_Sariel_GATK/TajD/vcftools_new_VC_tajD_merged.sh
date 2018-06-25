#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J tajD
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_merged_tajD.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_merged_tajD.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15

vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000 --out tajD/VCMA_wd_tajD_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000 --out tajD/VCMA_lr_tajD_10kb

vcftools --vcf merged_NVC_filtered_dups_removed.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_merged_list.txt --max-missing 0.8 --TajimaD 10000 --out tajD/merged_wd_tajD_10kb
vcftools --vcf merged_NVC_filtered_dups_removed.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_merged_list.txt --max-missing 0.8 --TajimaD 10000 --out tajD/merged_lr_tajD_10kb
