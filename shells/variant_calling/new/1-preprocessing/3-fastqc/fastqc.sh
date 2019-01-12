#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/ready
#SBATCH -J catfastq
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=720:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load fastqc/0.11.7

fastqc ann01-cwIA_R1.fastq.gz
fastqc ann01-cwIA_R2.fastq.gz
fastqc ann04-nwAR_R1.fastq.gz
fastqc ann04-nwAR_R2.fastq.gz
fastqc ann05-ccNM_R1.fastq.gz
fastqc ann05-ccNM_R2.fastq.gz
fastqc ann10-ccIL_R1.fastq.gz
fastqc ann10-ccIL_R2.fastq.gz
fastqc ann20-seAZ_R1.fastq.gz
fastqc ann20-seAZ_R2.fastq.gz
fastqc ann28-swSK_R1.fastq.gz
fastqc ann28-swSK_R2.fastq.gz
fastqc ann29-neSD_R1.fastq.gz
fastqc ann29-neSD_R2.fastq.gz
fastqc ann44-ccCA_R1.fastq.gz
fastqc ann44-ccCA_R2.fastq.gz
