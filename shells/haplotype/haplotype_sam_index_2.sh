#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o ../outs/base_calibrate_index_2.out
#SBATCH -e ../outs/base_calibrate_index_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools

# samtools index HT013_SD2W-18.sort.dup.realign_nochr00_dedup_reGroups.bam HT013_SD2W-18.sort.dup.realign_nochr00_dedup_reGroups.bai
# samtools index HT360_SD1W-35.sort.dup.realign_nochr00_dedup_reGroups.bam HT360_SD1W-35.sort.dup.realign_nochr00_dedup_reGroups.bai
# samtools index HT172_SK1W-Q.sort.dup.realign_nochr00_dedup_reGroups.bam HT172_SK1W-Q.sort.dup.realign_nochr00_dedup_reGroups.bai
# samtools index HT55_IA2W-17.sort.dup.realign_nochr00_dedup_reGroups.bam HT55_IA2W-17.sort.dup.realign_nochr00_dedup_reGroups.bai
# samtools index HT211_MO1W-39.sort.dup.realign_nochr00_dedup_reGroups.bam HT211_MO1W-39.sort.dup.realign_nochr00_dedup_reGroups.bai
samtools index Q075_IA1W-1.sort.dup.realign_nochr00_dedup_reGroups.bam Q075_IA1W-1.sort.dup.realign_nochr00_dedup_reGroups.bai
samtools index HT254_KS1W-27.sort.dup.realign_nochr00_dedup_reGroups.bam HT254_KS1W-27.sort.dup.realign_nochr00_dedup_reGroups.bai
samtools index Q086_MB1W-40.sort.dup.realign_nochr00_dedup_reGroups.bam Q086_MB1W-40.sort.dup.realign_nochr00_dedup_reGroups.bai
samtools index HT330_ND1W-6.sort.dup.realign_nochr00_dedup_reGroups.bam HT330_ND1W-6.sort.dup.realign_nochr00_dedup_reGroups.bai 
samtools index QPG4_KS2W-35.sort.dup.realign_nochr00_dedup_reGroups.bam QPG4_KS2W-35.sort.dup.realign_nochr00_dedup_reGroups.bai