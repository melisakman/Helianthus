#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_VCMA_merged.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_VCMA_merged.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -stats VCMA_SNPEff_stats.html XRQ VC_MA_combined_all_hardfiltered_filtered.vcf > VC_MA_combined_all_hardfiltered_filtered_snpeff.vcf
java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -stats merged_SNPEff_stats.html XRQ merged_NVC_filtered_dups_removed.vcf > merged_NVC_filtered_dups_removed_snpeff.vcf
