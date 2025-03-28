#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/vcf/Sariel_new_variant_calling
#SBATCH -J vcfFilter
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=24000
#SBATCH --time=12:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01_5_15only.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01_5_15only.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-1
module load vcftools/0.1.13
module load gcc/4.8.5 
# zcat ./chr09.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr09_filter01.vcf.gz
# zcat ./chr10.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr10_filter01.vcf.gz
# zcat ./chr11.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr11_filter01.vcf.gz
# zcat ./chr12.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr12_filter01.vcf.gz
# zcat ./chr13.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr13_filter01.vcf.gz
# zcat ./chr14.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr14_filter01.vcf.gz
zcat ./chr15.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr15_filter01.vcf.gz
# zcat ./chr16.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr16_filter01.vcf.gz
# zcat ./chr17.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/HanXRQChr17_filter01.vcf.gz

