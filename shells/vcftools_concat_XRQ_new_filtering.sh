#!/bin/bash #SBATCH -D /global/scratch/makman/HubnerData/vcf/new_filtering/vcf/
#SBATCH -J vcfMerge
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=64000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/vcftools_merge_XRQ_new_filtering.out
#SBATCH -e /global/home/users/makman/snpEff/outs/vcftools_merge_XRQ_new_filtering.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load perl
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat HanXRQChr01_complete_ordered_norm_maf_filt_indel_in.vcf.gz HanXRQChr02_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr03_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr04_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr05_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr06_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr07_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr08_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr09_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr10_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr11_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr12_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr13_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr14_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr15_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr16_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz HanXRQChr17_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz > XRQ_combined_new_filtering.vcf.gz
