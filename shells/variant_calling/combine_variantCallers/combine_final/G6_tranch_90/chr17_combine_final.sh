#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr17
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=6
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr17.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr17.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java


bcftools filter -r HanXRQChr17 -i 'TYPE = "snp"' unfiltered_2plus_GATK_annot_VSQR90_G6.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_90_G6_SNP_chr17.vcf.gz


export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
VQSRfiltered_90_G6_SNP_chr17.vcf.gz \
../filtered_90_G4_indelRef_chr17.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/G6_90/chr17_final.vcf.gz

