#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J  chr02
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/combine_all_ chr02.out
#SBATCH -e /global/home/users/makman/GATK/outs/combine_all_ chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load java

 
bcftools concat \
 chr02_2plus_annot_G8_VQSR99.vcf.gz \
../sams/gvcfs/genotyping/ chr02_GATK_indel_annot_hardfiltered_secondFilter.vcf.gz \
 chr02_2_ref/ chr02_2plus_ref_hardfiltered.vcf.gz | bcftools sort -T /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/ chr02_final.vcf.gz
