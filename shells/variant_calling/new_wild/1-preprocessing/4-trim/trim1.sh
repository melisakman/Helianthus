#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/ready/
#SBATCH -J trim
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=720:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trimmomatic.out
#SBATCH -e /global/home/users/makman/GATK/outs/trimmomatic.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann01-cwIA_R1.fastq.gz ann01-cwIA_R2.fastq.gz ann01-cwIA_trimmed_R1.fastq.gz ann01-cwIA_unpaired_R1.fastq.gz ann01-cwIA_trimmed_R2.fastq.gz ann01-cwIA_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann04-nwAR_R1.fastq.gz ann04-nwAR_R2.fastq.gz ann04-nwAR_trimmed_R1.fastq.gz ann04-nwAR_unpaired_R1.fastq.gz ann04-nwAR_trimmed_R2.fastq.gz ann04-nwAR_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann05-ccNM_R1.fastq.gz ann05-ccNM_R2.fastq.gz ann05-ccNM_trimmed_R1.fastq.gz ann05-ccNM_unpaired_R1.fastq.gz ann05-ccNM_trimmed_R2.fastq.gz ann05-ccNM_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann10-ccIL_R1.fastq.gz ann10-ccIL_R2.fastq.gz ann10-ccIL_trimmed_R1.fastq.gz ann10-ccIL_unpaired_R1.fastq.gz ann10-ccIL_trimmed_R2.fastq.gz ann10-ccIL_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann20-seAZ_R1.fastq.gz ann20-seAZ_R2.fastq.gz ann20-seAZ_trimmed_R1.fastq.gz ann20-seAZ_unpaired_R1.fastq.gz ann20-seAZ_trimmed_R2.fastq.gz ann20-seAZ_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann28-swSK_R1.fastq.gz ann28-swSK_R2.fastq.gz ann28-swSK_trimmed_R1.fastq.gz ann28-swSK_unpaired_R1.fastq.gz ann28-swSK_trimmed_R2.fastq.gz ann28-swSK_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann29-neSD_R1.fastq.gz ann29-neSD_R2.fastq.gz ann29-neSD_trimmed_R1.fastq.gz ann29-neSD_unpaired_R1.fastq.gz ann29-neSD_trimmed_R2.fastq.gz ann29-neSD_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann44-ccCA_R1.fastq.gz ann44-ccCA_R2.fastq.gz ann44-ccCA_trimmed_R1.fastq.gz ann44-ccCA_unpaired_R1.fastq.gz ann44-ccCA_trimmed_R2.fastq.gz ann44-ccCA_unpaired_R2.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36


