#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J filt3
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=48000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/filter_VC_MA3.out
#SBATCH -e /global/home/users/makman/GATK/outs/filter_VC_MA3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
module load gcc/4.8.5 
# zcat VC_MA_chr01.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr01_filter.vcf.gz
# zcat VC_MA_chr02.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr02_filter.vcf.gz
# zcat VC_MA_chr03.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr03_filter.vcf.gz
# zcat VC_MA_chr04.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr04_filter.vcf.gz
# zcat VC_MA_chr05.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr05_filter.vcf.gz
# zcat VC_MA_chr06.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr06_filter.vcf.gz
zcat VC_MA_chr07.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr07_filter.vcf.gz
zcat VC_MA_chr08.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr08_filter.vcf.gz
zcat VC_MA_chr09.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr09_filter.vcf.gz
# zcat VC_MA_chr10.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr10_filter.vcf.gz
# zcat VC_MA_chr11.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr11_filter.vcf.gz
# zcat VC_MA_chr12.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr12_filter.vcf.gz
# zcat VC_MA_chr13.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr13_filter.vcf.gz
# zcat VC_MA_chr14.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr14_filter.vcf.gz
# zcat VC_MA_chr15.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr15_filter.vcf.gz
# zcat VC_MA_chr16.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr16_filter.vcf.gz
# zcat VC_MA_chr17.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr17_filter.vcf.gz

