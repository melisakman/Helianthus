#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/ordered/
#SBATCH -J vcfMerge
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/vcftools_merge_HA412.out
#SBATCH -e /global/home/users/makman/snpEff/outs/vcftools_merge_HA412.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load perl
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat chrom1_cultivated_filtered_ordered.vcf \
chrom2_cultivated_filtered_ordered.vcf \
chrom3_cultivated_filtered_ordered.vcf \
chrom4_cultivated_filtered_ordered.vcf \
chrom5_cultivated_filtered_ordered.vcf \
chrom6_cultivated_filtered_ordered.vcf \
chrom7_cultivated_filtered_ordered.vcf \
chrom8_cultivated_filtered_ordered.vcf \
chrom9_cultivated_filtered_ordered.vcf \
chrom10_cultivated_filtered_ordered.vcf \
chrom11_cultivated_filtered_ordered.vcf \
chrom12_cultivated_filtered_ordered.vcf \
chrom13_cultivated_filtered_ordered.vcf \
chrom14_cultivated_filtered_ordered.vcf \
chrom15_cultivated_filtered_ordered.vcf \
chrom16_cultivated_filtered_ordered.vcf \
chrom17_cultivated_filtered_ordered.vcf \
| gzip -c > cultivated_filtered_ordered_combined.vcf.gz
