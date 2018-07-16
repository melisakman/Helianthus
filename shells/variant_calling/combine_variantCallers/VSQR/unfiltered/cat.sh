#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants
#SBATCH -J cat_unf
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_unfilt.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_unfilt.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cat chr02.head ../../bcftools_isec/unfiltered/chr02_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr02_unfiltered_2plus_GATK_complete.vcf
cat chr03.head ../../bcftools_isec/unfiltered/chr03_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr03_unfiltered_2plus_GATK_complete.vcf
cat chr04.head ../../bcftools_isec/unfiltered/chr04_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr04_unfiltered_2plus_GATK_complete.vcf
cat chr05.head ../../bcftools_isec/unfiltered/chr05_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr05_unfiltered_2plus_GATK_complete.vcf
cat chr06.head ../../bcftools_isec/unfiltered/chr06_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr06_unfiltered_2plus_GATK_complete.vcf
cat chr07.head ../../bcftools_isec/unfiltered/chr07_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr07_unfiltered_2plus_GATK_complete.vcf
cat chr08.head ../../bcftools_isec/unfiltered/chr08_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr08_unfiltered_2plus_GATK_complete.vcf
cat chr09.head ../../bcftools_isec/unfiltered/chr09_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr09_unfiltered_2plus_GATK_complete.vcf
cat chr10.head ../../bcftools_isec/unfiltered/chr10_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr10_unfiltered_2plus_GATK_complete.vcf
cat chr11.head ../../bcftools_isec/unfiltered/chr11_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr11_unfiltered_2plus_GATK_complete.vcf
cat chr12.head ../../bcftools_isec/unfiltered/chr12_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr12_unfiltered_2plus_GATK_complete.vcf
cat chr13.head ../../bcftools_isec/unfiltered/chr13_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr13_unfiltered_2plus_GATK_complete.vcf
cat chr14.head ../../bcftools_isec/unfiltered/chr14_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr14_unfiltered_2plus_GATK_complete.vcf
cat chr15.head ../../bcftools_isec/unfiltered/chr15_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr15_unfiltered_2plus_GATK_complete.vcf
cat chr16.head ../../bcftools_isec/unfiltered/chr16_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr16_unfiltered_2plus_GATK_complete.vcf
cat chr17.head ../../bcftools_isec/unfiltered/chr17_unfiltered_2plus_GATK.vcf > ../../bcftools_isec/unfiltered/chr17_unfiltered_2plus_GATK_complete.vcf