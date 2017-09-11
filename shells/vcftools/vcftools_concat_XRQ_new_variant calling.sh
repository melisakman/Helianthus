#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=64000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/vcftools_merge_XRQ_new_variantCalling.out
#SBATCH -e /global/home/users/makman/snpEff/outs/vcftools_merge_XRQ_new_variantCalling.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load perl
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat ../HanXRQChr01_filter01.vcf \
HanXRQChr02_filter01_ordered.vcf \
HanXRQChr03_filter01_ordered.vcf \
HanXRQChr04_filter01_ordered.vcf \
HanXRQChr05_filter01_ordered.vcf \
HanXRQChr06_filter01_ordered.vcf \
HanXRQChr07_filter01_ordered.vcf \
HanXRQChr08_filter01_ordered.vcf \
HanXRQChr09_filter01_ordered.vcf \
HanXRQChr10_filter01_ordered.vcf \
HanXRQChr11_filter01_ordered.vcf \
HanXRQChr12_filter01_ordered.vcf \
HanXRQChr13_filter01_ordered.vcf \
HanXRQChr14_filter01_ordered.vcf \
HanXRQChr15_filter01_ordered.vcf \
HanXRQChr16_filter01_ordered.vcf \
HanXRQChr17_filter01_ordered.vcf > HanXRQ_filtered_ordered_newVC.vcf
