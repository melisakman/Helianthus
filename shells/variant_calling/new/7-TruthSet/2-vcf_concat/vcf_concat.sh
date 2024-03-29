#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/truthSet
#SBATCH -J cattruth
#SBATCH --account=fc_blackman
#SBATCH --partition=savio
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/truth_vcf_concat.out
#SBATCH -e /global/home/users/makman/GATK/outs/truth_vcf_concat.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bcftools/1.6

bcftools concat \
../chr01_3/0000.vcf.gz \
../chr02_3/0000.vcf.gz \
../chr03_3/0000.vcf.gz \
../chr04_3/0000.vcf.gz \
../chr05_3/0000.vcf.gz \
../chr06_3/0000.vcf.gz \
../chr07_3/0000.vcf.gz \
../chr08_3/0000.vcf.gz \
../chr09_3/0000.vcf.gz \
../chr10_3/0000.vcf.gz \
../chr11_3/0000.vcf.gz \
../chr12_3/0000.vcf.gz \
../chr13_3/0000.vcf.gz \
../chr14_3/0000.vcf.gz \
../chr15_3/0000.vcf.gz \
../chr16_3/0000.vcf.gz \
../chr17_3/0000.vcf.gz > truth_GATK.vcf


