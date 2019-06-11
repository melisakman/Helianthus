#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J  chr16
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/combine_all_ chr16.out
#SBATCH -e /global/home/users/makman/GATK/outs/combine_all_ chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

 
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
 chr16_2plus_annot_G8_VQSR99.vcf.gz \
../sams/gvcfs/genotyping/ chr16_GATK_indel_annot_hardfiltered_secondFilter.vcf.gz \
 chr16_2_ref/ chr16_2plus_ref_hardfiltered_secondfilter.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/ chr16_final.vcf.gz
