#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

# zcat gvcfs/genotyping/chr01_GATK_SNP_hardfiltered.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > gvcfs/genotyping/chr01_GATK_SNP_hardfiltered_secondfilter.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_SNP_hardfiltered_secondfilter.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/freebayes_variants_chr01_filtered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_variants_chr01_filtered.vcf.gz

bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_1_filtered gvcfs/genotyping/chr01_GATK_SNP_hardfiltered_secondfilter.vcf.gz \
freebayes/freebayes_variants_chr01_filtered.vcf.gz \
samtools/samtools_variants_chr01_filtered.vcf.gz





