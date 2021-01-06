#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
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

zcat gvcfs/genotyping/chr01_GATK.vcf.gz | bcftools filter -i 'TYPE = "mnp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > gvcfs/genotyping/chr01_GATK_MNP.vcf.gz
zcat gvcfs/genotyping/chr01_GATK.vcf.gz | bcftools filter -i 'TYPE = "indel"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > gvcfs/genotyping/chr01_GATK_INDEL.vcf.gz
zcat gvcfs/genotyping/chr01_GATK.vcf.gz | bcftools filter -i 'TYPE = "bnd"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > gvcfs/genotyping/chr01_GATK_BND.vcf.gz
zcat gvcfs/genotyping/chr01_GATK.vcf.gz | bcftools filter -i 'TYPE = "other"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > gvcfs/genotyping/chr01_GATK_other.vcf.gz




# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_SNP.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_MNP.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_INDEL.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_BND.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_other.vcf.gz


# zcat ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01.vcf.gz | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP.vcf.gz 

# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP.vcf.gz

# bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_1_JS_GATK_SNP gvcfs/genotyping/chr01_GATK_SNP.vcf.gz \
# ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP.vcf.gz 


# zcat ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01.vcf.gz | bcftools filter -i 'TYPE = "mnp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_MNP.vcf.gz 
# zcat ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01.vcf.gz | bcftools filter -i 'TYPE = "indel"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_INDEL.vcf.gz 
# zcat ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01.vcf.gz | bcftools filter -i 'TYPE = "bnd"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_BND.vcf.gz 
# zcat ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01.vcf.gz | bcftools filter -i 'TYPE = "other"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_other.vcf.gz 
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_MNP.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_INDEL.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_BND.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_other.vcf.gz

bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_1_JS_GATK_MNP gvcfs/genotyping/chr01_GATK_MNP.vcf.gz \
../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_MNP.vcf.gz 

bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_1_JS_GATK_INDEL gvcfs/genotyping/chr01_GATK_INDEL.vcf.gz \
../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_INDEL.vcf.gz 

bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_1_JS_GATK_BND gvcfs/genotyping/chr01_GATK_BND.vcf.gz \
../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_BND.vcf.gz 

bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_1_JS_GATK_other gvcfs/genotyping/chr01_GATK_other.vcf.gz \
../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_other.vcf.gz 

