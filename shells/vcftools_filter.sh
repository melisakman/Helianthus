#!/bin/bash 
#SBATCH -D /global/scratch/makman/HubnerData/vcf/
#SBATCH -J vcfFilter
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=32000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_filter.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_filter.out
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-6
module load vcftools/0.1.13
zcat ./HanXRQChr01_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --remove-indels --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr01_complete_ordered_norm_maf_filt.vcf.gz
zcat ./HanXRQChr04_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --remove-indels --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr04_complete_ordered_norm_maf_filt.vcf.gz
zcat ./HanXRQChr17_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --remove-indels --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr17_complete_ordered_norm_maf_filt.vcf.gz
zcat ./HanXRQChr01_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr01_complete_ordered_norm_maf_filt_indel_in.vcf.gz
zcat ./HanXRQChr04_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr04_complete_ordered_norm_maf_filt_indel_in.vcf.gz
zcat ./HanXRQChr17_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr17_complete_ordered_norm_maf_filt_indel_in.vcf.gz