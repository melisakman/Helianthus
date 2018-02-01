#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J trim1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim_mexcult.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim_mexcult.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_30.Mex_A1516_R1.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_37.Mex_A1517_R1.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R2.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_37.Mex_A1517_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_38.Mex_A1572_R1.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R2.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_38.Mex_A1572_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_39.Mex_A1574_R1.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R2.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_39.Mex_A1574_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_30.Mex_A1516_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1_trimmed.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R1_unpaired.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2_trimmed.fastq.gz HI.4520.005.NEBNext_Index_40.Mex_Ann261_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
