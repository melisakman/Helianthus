#!/bin/bash 
#SBATCH -D /global/scratch/makman/HubnerData/vcf/Sariel_new_variant_calling/
#SBATCH -J vcfFilter
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=2
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=16
#SBATCH --mem=64000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load vcftools/0.1.13
module load gcc/4.8.5 
zcat ./chr01.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr01_filter01.vcf.gz
zcat ./chr02.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr02_filter01.vcf.gz
zcat ./chr03.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr03_filter01.vcf.gz
zcat ./chr05.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr05_filter01.vcf.gz
zcat ./chr06.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr06_filter01.vcf.gz
zcat ./chr07.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr07_filter01.vcf.gz
zcat ./chr08.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr08_filter01.vcf.gz
zcat ./chr09.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr09_filter01.vcf.gz
zcat ./chr10.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr10_filter01.vcf.gz
zcat ./chr11.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr11_filter01.vcf.gz
zcat ./chr12.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr12_filter01.vcf.gz
zcat ./chr13.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr13_filter01.vcf.gz
zcat ./chr14.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr14_filter01.vcf.gz
zcat ./chr15.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr15_filter01.vcf.gz
zcat ./chr16.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr16_filter01.vcf.gz
zcat ./chr17.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > filtered/HanXRQChr17_filter01.vcf.gz

