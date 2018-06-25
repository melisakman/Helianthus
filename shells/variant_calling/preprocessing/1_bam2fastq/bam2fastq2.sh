#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/bam/
#SBATCH -J bam2fastq
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=48000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bam2fastq2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bam2fastq2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bedtools
module load samtools/1.3.1
# samtools sort -n SF_33_177_HanXRQ.bam -o SF_33_177_HanXRQ_sorted.bam
# bedtools bamtofastq -i SF_33_177_HanXRQ_sorted.bam -fq SF33_R1.fastq -fq2 SF33_R2.fastq
samtools sort -n PPN262_3b7_HanXRQ.bam -o PPN262_3b7_HanXRQ_sorted.bam
bedtools bamtofastq -i PPN262_3b7_HanXRQ_sorted.bam -fq PPN262_R1.fastq -fq2 PPN262_R2.fastq
