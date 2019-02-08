#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_32
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=322:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map32.out
#SBATCH -e /global/home/users/makman/GATK/outs/map32.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann1238_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/ann1238_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/ann1238.sam
