#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J vcf2genotype
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=8000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VCMA_filtered.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VCMA_filtered.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15



vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr01 --recode --stdout > VCMA_filtered_chr01.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr02 --recode --stdout > VCMA_filtered_chr02.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr03 --recode --stdout > VCMA_filtered_chr03.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr04 --recode --stdout > VCMA_filtered_chr04.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr05 --recode --stdout > VCMA_filtered_chr05.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr06 --recode --stdout > VCMA_filtered_chr06.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr07 --recode --stdout > VCMA_filtered_chr07.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr08 --recode --stdout > VCMA_filtered_chr08.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr09 --recode --stdout > VCMA_filtered_chr09.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr10 --recode --stdout > VCMA_filtered_chr10.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr11 --recode --stdout > VCMA_filtered_chr11.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr12 --recode --stdout > VCMA_filtered_chr12.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr13 --recode --stdout > VCMA_filtered_chr13.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr14 --recode --stdout > VCMA_filtered_chr14.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr15 --recode --stdout > VCMA_filtered_chr15.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr16 --recode --stdout > VCMA_filtered_chr16.vcf
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr17 --recode --stdout > VCMA_filtered_chr17.vcf


python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr01.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr01_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr02.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr02_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr03.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr03_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr04.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr04_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr05.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr05_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr06.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr06_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr07.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr07_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr08.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr08_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr09.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr09_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr10.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr10_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr11.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr11_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr12.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr12_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr13.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr13_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr14.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr14_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr15.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr15_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr16.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr16_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_filtered_chr17.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_filtered_chr17_G12_input.txt
