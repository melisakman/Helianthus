#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J 3chr12
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
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
# 
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chr12_2/0000.vcf.gz chr12_2/FB_ST_sites_chr12.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr12_2/FB_ST_sites_chr12_sorted.vcf.gz
# 

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr12_2/FB_ST_sites_chr12_sorted.vcf.gz

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
   -T CombineVariants \
   --variant chr12_2/0000.vcf.gz \
   --variant chr12_2/FB_ST_sites_chr12_sorted.vcf.gz \
   -o chr12_2plus.vcf \
   --assumeIdenticalSamples

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr12_2plus.vcf > chr12_2plus.vcf.gz







# not used
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# chr12_2/0000.vcf.gz chr12_2/FB_ST_sites_chr12_sorted.vcf.gz | /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-sort > chr12_2plus_update.vcf.gz





