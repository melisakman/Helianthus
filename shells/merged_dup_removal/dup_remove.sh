#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J dup_remove
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/merged_dup_remove.out
#SBATCH -e /global/home/users/makman/GATK/outs/merged_dup_remove.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python vcf_remove_dups.py merged_NVC_filtered.vcf merged_NVC_filtered_dups_removed.vcf

sed 's/HanXRQChr//' merged_NVC_filtered_dups_removed.vcf > merged_NVC_filtered_dups_hanxrqchr_removed.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c merged_NVC_filtered_dups_removed.vcf > merged_NVC_filtered_dups_removed.vcf.gz 
