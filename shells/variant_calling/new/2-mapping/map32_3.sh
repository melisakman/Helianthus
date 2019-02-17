#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_32
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --mem=128000
#SBATCH --time=60:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map32_3_v2.out
#SBATCH -e /global/home/users/makman/GATK/outs/map32_3_v2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

zcat ../fastq/raw/ready/ann1238_lane2_R1_trimmed.fastq.gz | head -n 1000000000 > ../fastq/raw/ready/ann1238_lane2_R1_trimmed_250M_v2.fastq
zcat ../fastq/raw/ready/ann1238_lane2_R2_trimmed.fastq.gz | head -n 1000000000 > ../fastq/raw/ready/ann1238_lane2_R2_trimmed_250M_v2.fastq

gzip ../fastq/raw/ready/ann1238_lane2_R1_trimmed_250M_v2.fastq
gzip ../fastq/raw/ready/ann1238_lane2_R2_trimmed_250M_v2.fastq

/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann1238_lane2_R1_trimmed_250M_v2.fastq.gz -2 ../fastq/raw/ready/ann1238_lane2_R2_trimmed_250M_v2.fastq.gz -o /global/scratch/makman/GATK/sams/ann1238_lane2_250M_v2.sam
