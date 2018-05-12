#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/coverage_haplotype
#SBATCH -J snpden
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_Hubner_snpden.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_Hubner_snpden.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr01 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr01_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr01 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr01_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr02 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr02_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr02 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr02_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr03 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr03_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr03 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr03_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr04 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr04_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr04 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr04_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr05 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr05_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr05 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr05_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr06 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr06_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr06 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr06_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr07 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr07_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr07 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr07_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr08 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr08_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr08 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr08_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr09 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr09_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr09 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr09_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr10 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr10_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr10 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr10_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr11 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr11_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr11 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr11_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr12 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr12_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr12 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr12_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr13 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr13_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr13 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr13_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr14 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr14_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr14 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr14_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr15 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr15_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr15 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr15_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr16 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr16_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr16 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr16_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr17 --minQ 50 --minDP 1 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr17_2K
vcftools --gzvcf ./XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr17 --minQ 50 --minDP 1 --keep lr_list.txt --max-missing 0.8 --SNPdensity 2000 --out lr_snpden_chr17_2K
