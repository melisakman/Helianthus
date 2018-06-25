#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J compare
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_count.out
#SBATCH -e /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_count.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

zcat VC_MA_combined_snps.vcf.gz | grep "HanXRQChr01" | wc -l
zcat VC_MA_combined_snps_hardfiltered.vcf.gz | grep "HanXRQChr01" | wc -l
zcat VC_MA_combined_snps_hardfiltered_filtered.vcf.gz | grep "HanXRQChr01" | wc -l

zcat VC_MA_combined_indel.vcf.gz | grep "HanXRQChr01" | wc -l
zcat VC_MA_combined_indel_hardfiltered.vcf.gz | grep "HanXRQChr01" | wc -l
zcat VC_MA_combined_indel_hardfiltered_filtered.vcf.gz | grep "HanXRQChr01" | wc -l

