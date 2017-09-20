#!/bin/bash
#
#SBATCH --job-name=index
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --exclude=n0000.savio2,n0007.vector0,n0014.savio1,n0015.savio1,n0016.savio1,n0021.savio1,n0028.savio1,n0039.savio1,n0050.savio1,n0071.savio2,n0096.savio2,n0107.savio2,n0111.savio1,n0114.savio2,n0117.savio2,n0130.savio2,n0181.savio2,n0218.savio2,n0234.savio2,n0280.savio2
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_index_2.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_index_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools

samtools index Q075_IA1W-1.sort.dup.realign_nochr00_dedup_reGroups.bam Q075_IA1W-1.sort.dup.realign_nochr00_dedup_reGroups.bai
samtools index HT254_KS1W-27.sort.dup.realign_nochr00_dedup_reGroups.bam HT254_KS1W-27.sort.dup.realign_nochr00_dedup_reGroups.bai
samtools index Q086_MB1W-40.sort.dup.realign_nochr00_dedup_reGroups.bam Q086_MB1W-40.sort.dup.realign_nochr00_dedup_reGroups.bai
samtools index HT330_ND1W-6.sort.dup.realign_nochr00_dedup_reGroups.bam HT330_ND1W-6.sort.dup.realign_nochr00_dedup_reGroups.bai 
samtools index QPG4_KS2W-35.sort.dup.realign_nochr00_dedup_reGroups.bam QPG4_KS2W-35.sort.dup.realign_nochr00_dedup_reGroups.bai