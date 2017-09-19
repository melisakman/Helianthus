#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=32000
#SBATCH -o ../outs/dedup_chr00_new_VC_bams.out
#SBATCH -e ../outs/dedup_chr00_new_VC_bams.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1

srun samtools rmdup -S no_chr00/HT172_SK1W-Q.sort.dup.realign_nochr00.bam HT172_SK1W-Q.sort.dup.realign_nochr00_dedup.bam
