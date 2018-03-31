#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/VCMA_ethno
#SBATCH -J vcf2genotype
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=8000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VCMA_ethno.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VCMA_ethno.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15



vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr01 --recode --stdout > VCMA_ethno_chr01.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr02 --recode --stdout > VCMA_ethno_chr02.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr03 --recode --stdout > VCMA_ethno_chr03.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr04 --recode --stdout > VCMA_ethno_chr04.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr05 --recode --stdout > VCMA_ethno_chr05.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr06 --recode --stdout > VCMA_ethno_chr06.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr07 --recode --stdout > VCMA_ethno_chr07.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr08 --recode --stdout > VCMA_ethno_chr08.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr09 --recode --stdout > VCMA_ethno_chr09.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr10 --recode --stdout > VCMA_ethno_chr10.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr11 --recode --stdout > VCMA_ethno_chr11.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr12 --recode --stdout > VCMA_ethno_chr12.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr13 --recode --stdout > VCMA_ethno_chr13.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr14 --recode --stdout > VCMA_ethno_chr14.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr15 --recode --stdout > VCMA_ethno_chr15.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr16 --recode --stdout > VCMA_ethno_chr16.vcf
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --chr HanXRQChr17 --recode --stdout > VCMA_ethno_chr17.vcf


python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr01.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr01_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr02.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr02_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr03.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr03_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr04.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr04_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr05.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr05_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr06.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr06_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr07.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr07_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr08.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr08_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr09.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr09_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr10.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr10_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr11.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr11_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr12.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr12_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr13.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr13_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr14.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr14_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr15.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr15_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr16.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr16_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py VCMA_ethno_chr17.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_VCMA_ethno_samples.txt /clusterfs/rosalind/users/makman/G12/VCMA_ethno_chr17_G12_input.txt
