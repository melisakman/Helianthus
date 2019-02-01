#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_33
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=172:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map33.out
#SBATCH -e /global/home/users/makman/GATK/outs/map33.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annKS1W-27_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/annKS1W-27_trimmed_R2.fastq.gz -o annKS1W-27.sam
