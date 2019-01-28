#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/ready/
#SBATCH -J trim32
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim32.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim32.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../Ari_broa_R1.fastq.gz ../Ari_broa_R2.fastq.gz Ari_broa_R1_trimmed.fastq.gz Ari_broa_R1_unpaired.fastq.gz  Ari_broa_R2_trimmed.fastq.gz Ari_broa_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../Ari_Mand_R1.fastq.gz ../Ari_Mand_R2.fastq.gz Ari_Mand_R1_trimmed.fastq.gz Ari_Mand_R1_unpaired.fastq.gz  Ari_Mand_R2_trimmed.fastq.gz Ari_Mand_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../Paiute_R1.fastq.gz ../Paiute_R2.fastq.gz Paiute_R1_trimmed.fastq.gz Paiute_R1_unpaired.fastq.gz  Paiute_R2_trimmed.fastq.gz Paiute_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../Se_purp_R1.fastq.gz ../Se_purp_R2.fastq.gz Se_purp_R1_trimmed.fastq.gz Se_purp_R1_unpaired.fastq.gz  Se_purp_R2_trimmed.fastq.gz Se_purp_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../Se_strip_R1.fastq.gz ../Se_strip_R2.fastq.gz Se_strip_R1_trimmed.fastq.gz Se_strip_R1_unpaired.fastq.gz  Se_strip_R2_trimmed.fastq.gz Se_strip_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../Se137749_R1.fastq.gz ../Se137749_R2.fastq.gz Se137749_R1_trimmed.fastq.gz Se137749_R1_unpaired.fastq.gz  Se137749_R2_trimmed.fastq.gz Se137749_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
