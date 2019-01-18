#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/ready/
#SBATCH -J trim17
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim18a1.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim18a1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annMex_A1516_R1.fastq.gz annMex_A1516_R2.fastq.gz annMex_A1516_R1_trimmed.fastq.gz annMex_A1516_R1_unpaired.fastq.gz  annMex_A1516_R2_trimmed.fastq.gz annMex_A1516_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annMex_A1517_R1.fastq.gz annMex_A1517_R2.fastq.gz annMex_A1517_R1_trimmed.fastq.gz annMex_A1517_R1_unpaired.fastq.gz annMex_A1517_R2_trimmed.fastq.gz annMex_A1517_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annMex_A1572_R1.fastq.gz annMex_A1572_R2.fastq.gz annMex_A1572_R1_trimmed.fastq.gz annMex_A1572_R1_unpaired.fastq.gz annMex_A1572_R2_trimmed.fastq.gz annMex_A1572_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annMex_A1574_R1.fastq.gz annMex_A1574_R2.fastq.gz annMex_A1574_R1_trimmed.fastq.gz annMex_A1574_R1_unpaired.fastq.gz annMex_A1574_R2_trimmed.fastq.gz annMex_A1574_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annMex_Ann261_R1.fastq.gz annMex_Ann261_R2.fastq.gz annMex_Ann261_R1_trimmed.fastq.gz annMex_Ann261_R1_unpaired.fastq.gz annMex_Ann261_R2_trimmed.fastq.gz annMex_Ann261_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
