#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J co_chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VQSR_combine_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VQSR_combine_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bcftools/1.6

bcftools concat chr01_2plus_annot_G8_VQSR99.vcf.gz \
 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr01_2plus_annot_G8_VQSR99.vcf.gz
