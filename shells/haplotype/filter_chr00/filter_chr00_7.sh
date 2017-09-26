#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_7.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_7.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1

# srun samtools view -b HT013_SD2W-18.sort.dup.realign.bam -L ./chr_group.txt > HT013_SD2W-18.sort.dup.realign_nochr00.bam
# srun samtools view -b HT172_SK1W-Q.sort.dup.realign.bam -L ./chr_group.txt > HT172_SK1W-Q.sort.dup.realign_nochr00.bam
# srun samtools view -b HT211_MO1W-39.sort.dup.realign.bam -L ./chr_group.txt > HT211_MO1W-39.sort.dup.realign_nochr00.bam
# srun samtools view -b HT254_KS1W-27.sort.dup.realign.bam -L ./chr_group.txt > HT254_KS1W-27.sort.dup.realign_nochr00.bam
# srun samtools view -b HT330_ND1W-6.sort.dup.realign.bam -L ./chr_group.txt > HT330_ND1W-6.sort.dup.realign_nochr00.bam
# srun samtools view -b HT360_SD1W-35.sort.dup.realign.bam -L ./chr_group.txt > HT360_SD1W-35.sort.dup.realign_nochr00.bam
srun samtools view -b HT55_IA2W-17.sort.dup.realign.bam -L ./chr_group.txt > HT55_IA2W-17.sort.dup.realign_nochr00.bam 
# srun samtools view -b Q075_IA1W-1.sort.dup.realign.bam -L ./chr_group.txt > Q075_IA1W-1.sort.dup.realign_nochr00.bam
# srun samtools view -b Q086_MB1W-40.sort.dup.realign.bam -L ./chr_group.txt > Q086_MB1W-40.sort.dup.realign_nochr00.bam
# srun samtools view -b QPG4_KS2W-35.sort.dup.realign.bam -L ./chr_group.txt > QPG4_KS2W-35.sort.dup.realign_nochr00.bam
