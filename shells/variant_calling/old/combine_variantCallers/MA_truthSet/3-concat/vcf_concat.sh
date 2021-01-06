#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
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
chr01_3/0000.vcf.gz \
chr02_3/0000.vcf.gz \
chr03_3/0000.vcf.gz \
chr04_3/0000.vcf.gz \
chr05_3/0000.vcf.gz \
chr06_3/0000.vcf.gz \
chr07_3/0000.vcf.gz \
chr08_3/0000.vcf.gz \
chr09_3/0000.vcf.gz \
chr10_3/0000.vcf.gz \
chr11_3/0000.vcf.gz \
chr12_3/0000.vcf.gz \
chr13_3/0000.vcf.gz \
chr14_3/0000.vcf.gz \
chr15_3/0000.vcf.gz \
chr16_3/0000.vcf.gz \
chr17_3/0000.vcf.gz > truth_GATK.vcf.gz


