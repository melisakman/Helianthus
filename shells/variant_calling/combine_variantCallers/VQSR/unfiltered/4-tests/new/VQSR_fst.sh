#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
vcftools --vcf chr01_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr01_10kb
vcftools --vcf chr02_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr02_10kb
vcftools --vcf chr03_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr03_10kb
vcftools --vcf chr04_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr04_10kb
vcftools --vcf chr05_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr05_10kb
vcftools --vcf chr06_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr06_10kb
vcftools --vcf chr07_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr07_10kb
vcftools --vcf chr08_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr08_10kb
vcftools --vcf chr09_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr09_10kb
vcftools --vcf chr10_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr10_10kb
vcftools --vcf chr11_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr11_10kb
vcftools --vcf chr12_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr12_10kb
vcftools --vcf chr13_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr13_10kb
vcftools --vcf chr14_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr14_10kb
vcftools --vcf chr15_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr15_10kb
vcftools --vcf chr16_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr16_10kb
vcftools --vcf chr17_final_lessStringentInvariants.vcf --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr17_10kb
