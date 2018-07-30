#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# gunzip unfiltered_2plus_GATK_annot_VSQR90_G4.vcf.gz

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c unfiltered_2plus_GATK_annot_VSQR90_G4.vcf > unfiltered_2plus_GATK_annot_VSQR90_G4_2.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix unfiltered_2plus_GATK_annot_VSQR90_G4_2.vcf.gz
cat unfiltered_2plus_GATK_annot_VSQR90_G4.vcf | bcftools filter -r HanXRQChr01 -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_90_G4_SNP_chr01.vcf.gz

# zcat ../chr01_filtered_2plus_GATK_annot.vcf.gz | bcftools filter -i 'TYPE = "indel" || TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../filtered_90_G4_indelRef_chr01.vcf.gz
# 
# export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
# 
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# VQSRfiltered_90_G4_SNP_chr01.vcf.gz \
# ../filtered_90_G4_indelRef_chr01.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
# | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/chr01_final.vcf.gz

