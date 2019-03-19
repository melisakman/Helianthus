#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/ready/
#SBATCH -J chr01gen
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/Hopi_mapping_parent.out
#SBATCH -e /global/home/users/makman/GATK/outs/Hopi_mapping_parent.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java


# cp ../SRR5140381_1.fastq.gz Hopi_mapping_parent_R1.fastq.gz
# cp ../SRR5140381_2.fastq.gz Hopi_mapping_parent_R2.fastq.gz
# 
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Hopi_mapping_parent_R1.fastq.gz Hopi_mapping_parent_R2.fastq.gz Hopi_mapping_parent_R1_trimmed.fastq.gz Hopi_mapping_parent_R1_unpaired.fastq.gz Hopi_mapping_parent_R2_trimmed.fastq.gz Hopi_mapping_parent_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 Hopi_mapping_parent_R1_trimmed.fastq.gz -2 Hopi_mapping_parent_R2_trimmed.fastq.gz -o ../../../sams/Hopi_mapping_parent_real.sam



