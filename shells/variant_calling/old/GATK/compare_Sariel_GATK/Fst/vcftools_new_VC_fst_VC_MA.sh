#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J vcffst
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_merged_filtered_fst.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_merged_filtered_fst.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8 --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst_VCMA_lr_wd_10kb
vcftools --gzvcf merged_NVC_filtered_dups_removed.vcf --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8 --weir-fst-pop wd_merged_list.txt --weir-fst-pop lr_merged_list.txt --fst-window-size 10000 --out fst_merged_lr_wd_10kb
