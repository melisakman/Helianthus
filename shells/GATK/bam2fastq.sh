#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/GATK_variant_calling/fastq/bam/
#SBATCH -J bam2fastq
#SBATCH --partition=vector
#SBATCH --mem=36000
#SBATCH --qos=vector_batch
#SBATCH --time=36:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bam2fastq.out
#SBATCH -e /global/home/users/makman/GATK/outs/bam2fastq.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
module load bedtools
bedtools bamtofastq -fq2 -i SF_33_177_HanXRQ.bam -fq SF_33.fastq
bedtools bamtofastq -fq2 -i PPN262_3b7_HanXRQ.bam -fq PPN_262.fastq
