#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/VCMA_ethno
#SBATCH -J compare
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VCMA_ethno_combine_snp_indel.out
#SBATCH -e /global/home/users/makman/GATK/outs/VCMA_ethno_combine_snp_indel.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
vcf-concat VC_MA_combined_snps_ethno_hardfiltered_filtered.vcf.gz VC_MA_combined_indel_ethno_hardfiltered_filtered.vcf.gz > VC_MA_combined_all_ethno_hardfiltered_filtered.vcf.gz
vcf-sort VC_MA_combined_all_ethno_hardfiltered_filtered.vcf.gz > VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf.gz
