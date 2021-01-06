#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/SL7
#SBATCH -J vcffst
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --reservation=sl7testing
#SBATCH --time=1:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_VC_tajD_merged_SL7.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_VC_tajD_merged_SL7.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
vcftools --gzvcf chr01.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out wd_TajD_chr01_10kb_SL7
