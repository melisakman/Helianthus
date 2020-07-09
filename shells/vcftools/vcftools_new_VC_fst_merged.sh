#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_VC_fst_merged.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_VC_fst_merged.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17

module load vcftools/0.1.13
vcftools --gzvcf ../../merged_Nov2017/chr01.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr01_10kb
vcftools --gzvcf ../../merged_Nov2017/chr02.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr02_10kb
vcftools --gzvcf ../../merged_Nov2017/chr03.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr03_10kb
vcftools --gzvcf ../../merged_Nov2017/chr04.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr04_10kb
vcftools --gzvcf ../../merged_Nov2017/chr05.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr05_10kb
vcftools --gzvcf ../../merged_Nov2017/chr06.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr06_10kb
vcftools --gzvcf ../../merged_Nov2017/chr07.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr07_10kb
vcftools --gzvcf ../../merged_Nov2017/chr08.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr08_10kb
vcftools --gzvcf ../../merged_Nov2017/chr09.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr09_10kb
vcftools --gzvcf ../../merged_Nov2017/chr10.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr10_10kb
vcftools --gzvcf ../../merged_Nov2017/chr11.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr11_10kb
vcftools --gzvcf ../../merged_Nov2017/chr12.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr12_10kb
vcftools --gzvcf ../../merged_Nov2017/chr13.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr13_10kb
vcftools --gzvcf ../../merged_Nov2017/chr14.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr14_10kb
vcftools --gzvcf ../../merged_Nov2017/chr15.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr15_10kb
vcftools --gzvcf ../../merged_Nov2017/chr16.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr16_10kb
vcftools --gzvcf ../../merged_Nov2017/chr17.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/merged/Fst/lr_wd_chr17_10kb