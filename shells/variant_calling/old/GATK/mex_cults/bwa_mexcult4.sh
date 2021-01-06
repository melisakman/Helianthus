#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J bwaM4
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=360:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bwa_mexcult4.out
#SBATCH -e /global/home/users/makman/GATK/outs/bwa_mexcult4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bwa/0.7.17-r1188
module load java


# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_30.Mex_A1516_R1.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_37.Mex_A1517_R1.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R2.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_38.Mex_A1572_R1.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R2.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_39.Mex_A1574_R1.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R2.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36


# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_30.Mex_A1516_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_trimmed.fastq.gz > Mex_A1516.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_37.Mex_A1517_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R2_trimmed.fastq.gz > Mex_A1517.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_38.Mex_A1572_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R2_trimmed.fastq.gz > Mex_A1572.sam
bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_39.Mex_A1574_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R2_trimmed.fastq.gz > Mex_A1574.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2_trimmed.fastq.gz > Mex_Ann261.sam
# 
# 
