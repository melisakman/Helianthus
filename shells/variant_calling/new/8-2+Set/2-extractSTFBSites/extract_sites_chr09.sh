#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J 3chr09
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr09_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr09_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

# gunzip chr09_2/0001.vcf.gz
# 
# python ~/git/Helianthus/shells/variant_calling/new/8-2+Set/2-extractSTFBSites/extract_GATK_variants.py chr09_2/0001.vcf chr09_2/sites.txt chr09_2/FB_ST_sites_chr09.vcf
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_2/FB_ST_sites_chr09.vcf > chr09_2/FB_ST_sites_chr09.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_2/0001.vcf > chr09_2/0001.vcf.gz

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chr09_2/0000.vcf.gz chr09_2/FB_ST_sites_chr09.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr09_2/FB_ST_sites_chr09_sorted.vcf.gz


/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
chr09_2/0000.vcf.gz chr09_2/FB_ST_sites_chr09_sorted.vcf.gz | /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-sort > chr09_2plus_update.vcf.gz




