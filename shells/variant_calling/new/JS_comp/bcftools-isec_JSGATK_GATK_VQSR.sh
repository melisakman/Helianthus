#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/
#SBATCH -J 3chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_VQSR.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_VQSR.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools



# bcftools isec -n +1 -O z -p bcftools_isec/chr01_1_JS_GATK_VQSR bcftools_isec/chr01_2plus_annot_G8_VQSR99.vcf.gz \
# JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP_VQSR99.vcf.gz


# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c bcftools_isec/chr01_2plus_annot_G8_VQSR99.vcf > bcftools_isec/chr01_2plus_annot_G8_VQSR99.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix bcftools_isec/chr01_2plus_annot_G8_VQSR99.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix bcftools_isec/chr01_2plus_annot.vcf.gz

bcftools isec -n +1 -O z -p bcftools_isec/chr01_1_JS_GATK_VQSR_noVQSR bcftools_isec/chr01_2plus_annot_G8_VQSR99.vcf.gz \
bcftools_isec/chr01_2plus_annot.vcf.gz JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP_VQSR99.vcf.gz \
JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP.vcf.gz
