#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_3.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1


# srun samtools rmdup -S HT013_SD2W-18.sort.dup.realign_nochr00.bam HT013_SD2W-18.sort.dup.realign_nochr00_dedup.bam 
# srun samtools rmdup -S HT172_SK1W-Q.sort.dup.realign_nochr00.bam HT172_SK1W-Q.sort.dup.realign_nochr00_dedup.bam
srun samtools rmdup -S HT211_MO1W-39.sort.dup.realign_nochr00.bam HT211_MO1W-39.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT254_KS1W-27.sort.dup.realign_nochr00.bam HT254_KS1W-27.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT330_ND1W-6.sort.dup.realign_nochr00.bam HT330_ND1W-6.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT360_SD1W-35.sort.dup.realign_nochr00.bam HT360_SD1W-35.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT55_IA2W-17.sort.dup.realign_nochr00.bam HT55_IA2W-17.sort.dup.realign_nochr00_dedup.bam 
# srun samtools rmdup -S Q075_IA1W-1.sort.dup.realign_nochr00.bam Q075_IA1W-1.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S Q086_MB1W-40.sort.dup.realign_nochr00.bam Q086_MB1W-40.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S QPG4_KS2W-35.sort.dup.realign_nochr00.bam QPG4_KS2W-35.sort.dup.realign_nochr00_dedup.bam


