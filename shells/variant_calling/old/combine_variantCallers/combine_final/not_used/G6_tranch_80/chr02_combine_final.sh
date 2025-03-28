#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr02
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr02.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# gunzip unfiltered_2plus_GATK_annot_VSQR80_G6.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c unfiltered_2plus_GATK_annot_VSQR80_G6.vcf > unfiltered_2plus_GATK_annot_VSQR80_G6.vcf.gz
# 
bcftools filter -r HanXRQChr02 -i 'TYPE = "snp"' unfiltered_2plus_GATK_annot_VSQR80_G6.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_80_G6_SNP_chr02.vcf.gz


export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
VQSRfiltered_80_G6_SNP_chr02.vcf.gz \
../filtered_90_G4_indelRef_chr02.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/G6_80/chr02_final.vcf.gz

