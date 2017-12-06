#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered
#SBATCH -J vcffst
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_knl
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_VC_tajD_merged_SL7.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_VC_tajD_merged_SL7.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
vcftools --gzvcf ../../merged_Nov2017/chr01.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/TajD/wd_TajD_chr01_10kb_SL7
