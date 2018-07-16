#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/
#SBATCH -J catchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
chr01_filtered_2plus_GATK_annot.vcf.gz \
chr02_filtered_2plus_GATK_annot.vcf.gz \
chr03_filtered_2plus_GATK_annot.vcf.gz \
chr04_filtered_2plus_GATK_annot.vcf.gz \
chr05_filtered_2plus_GATK_annot.vcf.gz \
chr06_filtered_2plus_GATK_annot.vcf.gz \
chr07_filtered_2plus_GATK_annot.vcf.gz \
chr08_filtered_2plus_GATK_annot.vcf.gz \
chr09_filtered_2plus_GATK_annot.vcf.gz \
chr10_filtered_2plus_GATK_annot.vcf.gz \
chr11_filtered_2plus_GATK_annot.vcf.gz \
chr12_filtered_2plus_GATK_annot.vcf.gz \
chr13_filtered_2plus_GATK_annot.vcf.gz \
chr14_filtered_2plus_GATK_annot.vcf.gz \
chr15_filtered_2plus_GATK_annot.vcf.gz \
chr16_filtered_2plus_GATK_annot.vcf.gz \
chr17_filtered_2plus_GATK_annot.vcf.gz > filtered_2plus_GATK_annot.vcf.gz

