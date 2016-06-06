#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab
#SBATCH -J catVariant
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/catVariant_HA412.out
#SBATCH -e /global/home/users/makman/snpEff/outs/catVariant_HA412.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load gtk+/2.24.13 
srun java -cp GenomeAnalysisTK.jar org.broadinstitute.sting.tools.CatVariants -R snpEff/data/HA412/sequences.fa \
-V vcf_HA412/chrom1_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom2_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom3_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom4_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom5_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom6_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom7_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom8_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom9_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom10_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom11_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom12_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom13_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom14_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom15_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom16_cultivated_filtered_ordered.vcf.gz \
-V vcf_HA412/chrom17_cultivated_filtered_ordered.vcf.gz \
-out cultivated_filtered_ordered_combined.vcf.gz \
-assumeSorted