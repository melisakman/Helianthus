#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J sed
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sed_SNP.out
#SBATCH -e /global/home/users/makman/GATK/outs/sed_SNP.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
zcat VC_MA_combined_snps_hardfiltered_filtered.vcf.gz | sed 's/HanXRQChr//' | gzip > VC_MA_combined_snps_hardfiltered_filtered_hanxrq_removed.vcf.gz
# zcat VC_MA_combined_snps_mex_hardfiltered_filtered.vcf.gz | sed 's/HanXRQChr//' | gzip > VC_MA_combined_snps_mex_hardfiltered_filtered_hanxrq_removed.vcf.gz

