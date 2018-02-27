#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J sed
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sed_SNP.out
#SBATCH -e /global/home/users/makman/GATK/outs/sed_SNP.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
# zcat VC_MA_combined_snps_hardfiltered_filtered.vcf.gz | sed 's/HanXRQChr//' | gzip > VC_MA_combined_snps_hardfiltered_filtered_hanxrq_removed.vcf.gz
# zcat VC_MA_combined_snps_mex_hardfiltered_filtered.vcf.gz | sed 's/HanXRQChr//' | gzip > VC_MA_combined_snps_mex_hardfiltered_filtered_hanxrq_removed.vcf.gz
zcat /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/merged_Nov2017/merged_NVC.vcf.gz | sed 's/HanXRQChr//' | gzip > /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/merged_Nov2017/merged_NVC_hanxrq_removed.vcf.gz

