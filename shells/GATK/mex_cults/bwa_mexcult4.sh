#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed
#SBATCH -J bwaM4
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bwa_mexcult4.out
#SBATCH -e /global/home/users/makman/GATK/outs/bwa_mexcult4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bwa/0.7.15

# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_30.Mex_A1516_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_trimmed.fastq.gz > Mex_A1516.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_37.Mex_A1517_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R2_trimmed.fastq.gz > Mex_A1517.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_38.Mex_A1572_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R2_trimmed.fastq.gz > Mex_A1572.sam
bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_39.Mex_A1574_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R2_trimmed.fastq.gz > Mex_A1574.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2_trimmed.fastq.gz > Mex_Ann261.sam
# 
# 
