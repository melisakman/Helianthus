#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J 3chr03
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr03_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr03_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

# gunzip chr03_2/0001.vcf.gz
# 
# python ~/git/Helianthus/shells/variant_calling/new/8-2+Set/2-extractSTFBSites/extract_GATK_variants.py chr03_2/0001.vcf chr03_2/sites.txt chr03_2/FB_ST_sites_chr03.vcf
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr03_2/FB_ST_sites_chr03.vcf > chr03_2/FB_ST_sites_chr03.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr03_2/0001.vcf > chr03_2/0001.vcf.gz
# 
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chr03_2/0000.vcf.gz chr03_2/FB_ST_sites_chr03.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr03_2/FB_ST_sites_chr03_sorted.vcf.gz
# 








# not used
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# chr03_2/0000.vcf.gz chr03_2/FB_ST_sites_chr03_sorted.vcf.gz | /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-sort > chr03_2plus_update.vcf.gz





