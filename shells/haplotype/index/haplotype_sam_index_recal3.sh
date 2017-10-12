#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_index_reGroups3.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_index_reGroups3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools

# samtools index KS2W-35_dedup_reGroups.bam KS2W-35_dedup_reGroups.bai
# samtools index SD2W-18_dedup_reGroups.bam SD2W-18_dedup_reGroups.bai
# samtools index SD1W-35_dedup_reGroups.bam SD1W-35_dedup_reGroups.bai
# samtools index SK1W-Q_dedup_reGroups.bam  SK1W-Q_dedup_reGroups.bai
samtools index IA2W-17_dedup_reGroups.bam IA2W-17_dedup_reGroups.bai
samtools index MO1W-39_dedup_reGroups.bam MO1W-39_dedup_reGroups.bai
# samtools index IA1W-1_dedup_reGroups.bam  IA1W-1_dedup_reGroups.bai
# samtools index KS1W-27_dedup_reGroups.bam KS1W-27_dedup_reGroups.bai
# samtools index MB1W-40_dedup_reGroups.bam MB1W-40_dedup_reGroups.bai
# samtools index ND1W-6_dedup_reGroups.bam ND1W-6_dedup_reGroups.bai
