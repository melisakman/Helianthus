#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J chr12
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/combine_all_chr12.out
#SBATCH -e /global/home/users/makman/GATK/outs/combine_all_chr12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/global/scratch/makman/temp
module load java
 
bcftools concat \
chr12_2plus_annot_G8_VQSR99.vcf.gz \
../sams/gvcfs/genotyping/chr12_GATK_indel_annot_hardfiltered_secondFilter.vcf.gz \
chr12_2_ref/chr12_2plus_ref_hardfiltered.vcf.gz | bcftools sort -T /global/scratch/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/chr12_final.vcf.gz
