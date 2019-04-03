#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J 3chr12
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr12_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr12_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

# gunzip chr12_2/0001.vcf.gz
# 
# python ~/git/Helianthus/shells/variant_calling/new/8-2+Set/2-extractSTFBSites/extract_GATK_variants.py chr12_2/0001.vcf chr12_2/sites.txt chr12_2/FB_ST_sites_chr12.vcf
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr12_2/FB_ST_sites_chr12.vcf > chr12_2/FB_ST_sites_chr12.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr12_2/0001.vcf > chr12_2/0001.vcf.gz

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
chr12_2/0000.vcf.gz chr12_2/FB_ST_sites_chr12.vcf.gz | /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-sort > chr12_2plus.vcf.gz





