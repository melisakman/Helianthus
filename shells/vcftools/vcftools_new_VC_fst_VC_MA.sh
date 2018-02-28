#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VC_merged_fst.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VC_merged_fst.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
# vcftools --gzvcf VC_MA_combined_snps_hardfiltered_filtered.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out lr_wd_VC_MA_10kb
vcftools --gzvcf merged_NVC_hanxrq_removed_filtered.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_merged_list.txt --weir-fst-pop lr_merged_list.txt --fst-window-size 10000 --out lr_wd_VC_merged_10kb
