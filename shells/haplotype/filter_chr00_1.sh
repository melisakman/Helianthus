#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/raw/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=48000
#SBATCH -o ../outs/filter_chr00_new_VC_1.out
#SBATCH -e ../outs/filter_chr00_new_VC_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1

srun samtools view -b ./HT013_SD2W-18.sort.dup.realign.bam -L ./chr_group.txt > HT013_SD2W-18.sort.dup.realign_nochr00.bam
