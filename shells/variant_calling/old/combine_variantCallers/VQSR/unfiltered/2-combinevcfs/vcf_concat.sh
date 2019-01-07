#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J catchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=6
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/2plus_vcf_concat_unfilt.out
#SBATCH -e /global/home/users/makman/GATK/outs/2plus_vcf_concat_unfilt.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
chr01_unfiltered_2plus_GATK_annot.vcf.gz \
chr02_unfiltered_2plus_GATK_annot.vcf.gz \
chr03_unfiltered_2plus_GATK_annot.vcf.gz \
chr04_unfiltered_2plus_GATK_annot.vcf.gz \
chr05_unfiltered_2plus_GATK_annot.vcf.gz \
chr06_unfiltered_2plus_GATK_annot.vcf.gz \
chr07_unfiltered_2plus_GATK_annot.vcf.gz \
chr08_unfiltered_2plus_GATK_annot.vcf.gz \
chr09_unfiltered_2plus_GATK_annot.vcf.gz \
chr10_unfiltered_2plus_GATK_annot.vcf.gz \
chr11_unfiltered_2plus_GATK_annot.vcf.gz \
chr12_unfiltered_2plus_GATK_annot.vcf.gz \
chr13_unfiltered_2plus_GATK_annot.vcf.gz \
chr14_unfiltered_2plus_GATK_annot.vcf.gz \
chr15_unfiltered_2plus_GATK_annot.vcf.gz \
chr16_unfiltered_2plus_GATK_annot.vcf.gz \
chr17_unfiltered_2plus_GATK_annot.vcf.gz > unfiltered_2plus_GATK_annot.vcf.gz

