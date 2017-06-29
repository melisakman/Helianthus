#!/bin/bash 
#SBATCH -D /global/scratch/makman/HubnerData/vcf/raw_vcf/
#SBATCH -J vcfFilter
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=2
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=16
#SBATCH --mem=64000
#SBATCH --time=10:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_filter_all_10.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_filter_all_10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load vcftools/0.1.13
module load gcc/4.8.5 
#zcat ./HanXRQChr02_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr02_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr03_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr03_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr05_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr05_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr06_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr06_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr07_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr07_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr08_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr08_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr09_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr09_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr10_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > ../new_filtering/vcf/HanXRQChr10_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr11_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr11_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr12_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr12_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr13_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr13_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr14_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr14_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr15_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr15_complete_ordered_norm_maf_filt_indel_in.vcf.gz
# zcat ./HanXRQChr16_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > HanXRQChr16_complete_ordered_norm_maf_filt_indel_in.vcf.gz
zcat ./HanXRQChr10_complete_ordered_norm.vcf.gz | /global/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /global/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > ../new_filtering/vcf/chr10_beforesort.vcf

# | vcf-sort | gzip -c > ../new_filtering/vcf/HanXRQChr10_complete_ordered_norm_maf_filt_indel_in.vcf.gz
