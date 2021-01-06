#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/ready/
#SBATCH -J trim29
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim29.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim29.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../RHA397_R1.fastq.gz ../RHA397_R2.fastq.gz RHA397_R1_trimmed.fastq.gz RHA397_R1_unpaired.fastq.gz  RHA397_R2_trimmed.fastq.gz RHA397_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../HA207_R1.fastq.gz ../HA207_R2.fastq.gz HA207_R1_trimmed.fastq.gz HA207_R1_unpaired.fastq.gz  HA207_R2_trimmed.fastq.gz HA207_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../RHA310_R1.fastq.gz ../RHA310_R2.fastq.gz RHA310_R1_trimmed.fastq.gz RHA310_R1_unpaired.fastq.gz  RHA310_R2_trimmed.fastq.gz RHA310_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../RHA354_R1.fastq.gz ../RHA354_R2.fastq.gz RHA354_R1_trimmed.fastq.gz RHA354_R1_unpaired.fastq.gz  RHA354_R2_trimmed.fastq.gz RHA354_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../HA323_R1.fastq.gz ../HA323_R2.fastq.gz HA323_R1_trimmed.fastq.gz HA323_R1_unpaired.fastq.gz  HA323_R2_trimmed.fastq.gz HA323_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../HA380_R1.fastq.gz ../HA380_R2.fastq.gz HA380_R1_trimmed.fastq.gz HA380_R1_unpaired.fastq.gz  HA380_R2_trimmed.fastq.gz HA380_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../HA314_R1.fastq.gz ../HA314_R2.fastq.gz HA314_R1_trimmed.fastq.gz HA314_R1_unpaired.fastq.gz  HA314_R2_trimmed.fastq.gz HA314_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../RHA324_R1.fastq.gz ../RHA324_R2.fastq.gz RHA324_R1_trimmed.fastq.gz RHA324_R1_unpaired.fastq.gz  RHA324_R2_trimmed.fastq.gz RHA324_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../HA259_R1.fastq.gz ../HA259_R2.fastq.gz HA259_R1_trimmed.fastq.gz HA259_R1_unpaired.fastq.gz  HA259_R2_trimmed.fastq.gz HA259_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ../RHA362_R1.fastq.gz ../RHA362_R2.fastq.gz RHA362_R1_trimmed.fastq.gz RHA362_R1_unpaired.fastq.gz  RHA362_R2_trimmed.fastq.gz RHA362_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:23 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
