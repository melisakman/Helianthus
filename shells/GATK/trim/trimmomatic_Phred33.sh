#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J trimTile
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim_phred.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim_phred.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load fastqc/0.11.5 

java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annSK1W-Q_R1.fastq.gz annSK1W-Q_R2.fastq.gz annSK1W-Q_R1_trimmed_phred.fastq.gz annSK1W-Q_R1_unpaired_phred.fastq.gz annSK1W-Q_R2_trimmed_phred.fastq.gz annSK1W-Q_R2_unpaired_phred.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
fastqc annSK1W-Q_R1_trimmed_phred.fastq.gz
fastqc annSK1W-Q_R2_trimmed_phred.fastq.gz


