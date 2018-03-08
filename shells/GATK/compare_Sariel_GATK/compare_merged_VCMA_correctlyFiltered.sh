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
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_sorted_dupsremoved_filtered.out
#SBATCH -e /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_sorted_dupsremoved_filtered.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip VC_MA_combined_all_hardfiltered_filtered.vcf.gz
python overlap_vcfs.py VC_MA_combined_all_hardfiltered_filtered.vcf merged_NVC_filtered_dups_removed.vcf

