#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/
#SBATCH -J catVariant
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/catVariant_HA412.out
#SBATCH -e /global/home/users/makman/snpEff/outs/catVariant_HA412.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load GATK/3.6 
srun java -cp GenomeAnalysisTK.jar org.broadinstitute.sting.tools.CatVariants -R snpEff/data/HA412/sequences.fa \
-V chrom1_cultivated_filtered_ordered.vcf.gz \
-V chrom2_cultivated_filtered_ordered.vcf.gz \
-V chrom3_cultivated_filtered_ordered.vcf.gz \
-V chrom4_cultivated_filtered_ordered.vcf.gz \
-V chrom5_cultivated_filtered_ordered.vcf.gz \
-V chrom6_cultivated_filtered_ordered.vcf.gz \
-V chrom7_cultivated_filtered_ordered.vcf.gz \
-V chrom8_cultivated_filtered_ordered.vcf.gz \
-V chrom9_cultivated_filtered_ordered.vcf.gz \
-V chrom10_cultivated_filtered_ordered.vcf.gz \
-V chrom11_cultivated_filtered_ordered.vcf.gz \
-V chrom12_cultivated_filtered_ordered.vcf.gz \
-V chrom13_cultivated_filtered_ordered.vcf.gz \
-V chrom14_cultivated_filtered_ordered.vcf.gz \
-V chrom15_cultivated_filtered_ordered.vcf.gz \
-V chrom16_cultivated_filtered_ordered.vcf.gz \
-V chrom17_cultivated_filtered_ordered.vcf.gz \
-out cultivated_filtered_ordered_combined.vcf.gz \
-assumeSorted