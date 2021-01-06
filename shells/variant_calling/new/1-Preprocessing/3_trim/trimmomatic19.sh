#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/ready/
#SBATCH -J trim17
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim19.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim19.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann1238_R1.fastq.gz ann1238_R2.fastq.gz ann1238_R1_trimmed.fastq.gz ann1238_R1_unpaired.fastq.gz  ann1238_R2_trimmed.fastq.gz ann1238_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
