#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J compare
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=64000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/compare_Sariel_VCMA.out
#SBATCH -e /global/home/users/makman/GATK/outs/compare_Sariel_VCMA.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat VC_MA_combined_snps_hardfiltered_filtered.vcf.gz VC_MA_combined_indel_hardfiltered_filtered.vcf.gz > VC_MA_combined_all_hardfiltered_filtered.vcf
# zcat merged_NVC.vcf.gz | /clusterfs/rosalind/users/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > merged_NVC_filtered.vcf
python overlap_vcfs.py VC_MA_combined_all_hardfiltered_filtered.vcf merged_NVC_filtered.vcf
# python overlap_vcfs2.py merged_NVC_filtered.vcf VC_MA_combined_all_hardfiltered_filtered.vcf

