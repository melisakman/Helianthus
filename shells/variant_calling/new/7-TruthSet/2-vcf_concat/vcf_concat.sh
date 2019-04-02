#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet
#SBATCH -J cattruth
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/truth_vcf_concat.out
#SBATCH -e /global/home/users/makman/GATK/outs/truth_vcf_concat.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
chr01_truth_GATK.vcf \
chr02_truth_GATK.vcf \
chr03_truth_GATK.vcf \
chr04_truth_GATK.vcf \
chr05_truth_GATK.vcf \
chr06_truth_GATK.vcf \
chr07_truth_GATK.vcf \
chr08_truth_GATK.vcf \
chr09_truth_GATK.vcf \
chr10_truth_GATK.vcf \
chr11_truth_GATK.vcf \
chr12_truth_GATK.vcf \
chr13_truth_GATK.vcf \
chr14_truth_GATK.vcf \
chr15_truth_GATK.vcf \
chr16_truth_GATK.vcf \
chr17_truth_GATK.vcf > truth_GATK.vcf.gz


