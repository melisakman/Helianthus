#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/
#SBATCH -J trim19
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim19_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim19_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Ann1238_lane2_R1.fastq.gz Ann1238_lane2_R2.fastq.gz Ann1238_lane2_R1_trimmed.fastq.gz Ann1238_lane2_R1_unpaired.fastq.gz  ready/Ann1238_lane2_R2_trimmed.fastq.gz ready/Ann1238_lane2_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
