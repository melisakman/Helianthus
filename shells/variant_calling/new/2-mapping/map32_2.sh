#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_32
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --mem=128000
#SBATCH --time=120:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map32_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/map32_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann1238_lane2_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/ann1238_lane2_R2_trimmed.fastq.gz -o /global/scratch/makmen/GATK/sams/ann1238_lane2_v2.sam
