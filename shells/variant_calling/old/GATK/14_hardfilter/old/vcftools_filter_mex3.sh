#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J filt3M
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/filter_VC_MA_mex3.out
#SBATCH -e /global/home/users/makman/GATK/outs/filter_VC_MA_mex3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
module load gcc/4.8.5 
# zcat VC_MA_chr01_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr01_mex_filter.vcf.gz
# zcat VC_MA_chr02_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr02_mex_filter.vcf.gz
# zcat VC_MA_chr03_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr03_mex_filter.vcf.gz
# zcat VC_MA_chr04_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr04_mex_filter.vcf.gz
# zcat VC_MA_chr05_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr05_mex_filter.vcf.gz
# zcat VC_MA_chr06_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr06_mex_filter.vcf.gz
zcat VC_MA_chr07_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr07_mex_filter.vcf.gz
zcat VC_MA_chr08_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr08_mex_filter.vcf.gz
zcat VC_MA_chr09_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr09_mex_filter.vcf.gz
# zcat VC_MA_chr10_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr10_mex_filter.vcf.gz
# zcat VC_MA_chr11_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr11_mex_filter.vcf.gz
# zcat VC_MA_chr12_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr12_mex_filter.vcf.gz
# zcat VC_MA_chr13_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr13_mex_filter.vcf.gz
# zcat VC_MA_chr14_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr14_mex_filter.vcf.gz
# zcat VC_MA_chr15_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr15_mex_filter.vcf.gz
# zcat VC_MA_chr16_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr16_mex_filter.vcf.gz
# zcat VC_MA_chr17_mex.vcf.gz | /clusterfs/vector/scratch/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| /clusterfs/vector/scratch/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_chr17_mex_filter.vcf.gz

