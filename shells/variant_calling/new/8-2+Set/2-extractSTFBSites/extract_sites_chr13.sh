#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J 3chr13
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr13_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr13_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

gunzip chr13_2/0001.vcf.gz

python ~/git/Helianthus/shells/variant_calling/new/8-2+Set/2-extractSTFBSites/extract_GATK_variants.py chr13_2/0001.vcf chr13_2/sites.txt chr13_2/FB_ST_sites_chr13.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr13_2/FB_ST_sites_chr13.vcf > chr13_2/FB_ST_sites_chr13.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr13_2/0001.vcf > chr13_2/0001.vcf.gz

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
chr13_2/0000.vcf.gz chr13_2/FB_ST_sites_chr13.vcf.gz | /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-sort > chr13_2plus.vcf.gz




