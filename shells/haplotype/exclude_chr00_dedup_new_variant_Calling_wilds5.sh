#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=32000
#SBATCH -o ../outs/dedup_chr00_new_VC_bams5.out
#SBATCH -e ../outs/dedup_chr00_new_VC_bams5.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1

# srun samtools view -b HT013_SD2W-18.sort.dup.realign.bam -L ./chr_group.txt > HT013_SD2W-18.sort.dup.realign_nochr00.bam
# srun samtools view -b HT172_SK1W-Q.sort.dup.realign.bam -L ./chr_group.txt > HT172_SK1W-Q.sort.dup.realign_nochr00.bam
# srun samtools view -b HT211_MO1W-39.sort.dup.realign.bam -L ./chr_group.txt > HT211_MO1W-39.sort.dup.realign_nochr00.bam
# srun samtools view -b HT254_KS1W-27.sort.dup.realign.bam -L ./chr_group.txt > HT254_KS1W-27.sort.dup.realign_nochr00.bam
# srun samtools view -b HT330_ND1W-6.sort.dup.realign.bam -L ./chr_group.txt > HT330_ND1W-6.sort.dup.realign_nochr00.bam
# srun samtools view -b HT360_SD1W-35.sort.dup.realign.bam -L ./chr_group.txt > HT360_SD1W-35.sort.dup.realign_nochr00.bam
# srun samtools view -b HT55_IA2W-17.sort.dup.realign.bam -L ./chr_group.txt > HT55_IA2W-17.sort.dup.realign_nochr00.bam 
# srun samtools view -b Q075_IA1W-1.sort.dup.realign.bam -L ./chr_group.txt > Q075_IA1W-1.sort.dup.realign_nochr00.bam
# srun samtools view -b Q086_MB1W-40.sort.dup.realign.bam -L ./chr_group.txt > Q086_MB1W-40.sort.dup.realign_nochr00.bam
# srun samtools view -b QPG4_KS2W-35.sort.dup.realign.bam -L ./chr_group.txt > QPG4_KS2W-35.sort.dup.realign_nochr00.bam

# srun samtools rmdup -S HT013_SD2W-18.sort.dup.realign_nochr00.bam HT013_SD2W-18.sort.dup.realign_nochr00_dedup.bam 
# srun samtools rmdup -S HT172_SK1W-Q.sort.dup.realign_nochr00.bam HT172_SK1W-Q.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT211_MO1W-39.sort.dup.realign_nochr00.bam HT211_MO1W-39.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT254_KS1W-27.sort.dup.realign_nochr00.bam HT254_KS1W-27.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT330_ND1W-6.sort.dup.realign_nochr00.bam HT330_ND1W-6.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT360_SD1W-35.sort.dup.realign_nochr00.bam HT360_SD1W-35.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S HT55_IA2W-17.sort.dup.realign_nochr00.bam HT55_IA2W-17.sort.dup.realign_nochr00_dedup.bam 
# srun samtools rmdup -S Q075_IA1W-1.sort.dup.realign_nochr00.bam Q075_IA1W-1.sort.dup.realign_nochr00_dedup.bam
# srun samtools rmdup -S Q086_MB1W-40.sort.dup.realign_nochr00.bam Q086_MB1W-40.sort.dup.realign_nochr00_dedup.bam
srun samtools rmdup -S QPG4_KS2W-35.sort.dup.realign_nochr00.bam QPG4_KS2W-35.sort.dup.realign_nochr00_dedup.bam


