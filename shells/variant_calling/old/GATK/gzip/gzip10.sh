#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J gzip10
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip10.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
# gzip MexCult6_R2.fastq
# gzip MexCult7_R1.fastq
# gzip MexCult7_R2.fastq
# gzip MexCult9_R1.fastq
# gzip MexCult9_R2.fastq
# gzip PPN083_R1.fastq
# gzip PPN083_R2.fastq
# gzip Pueblo_R1.fastq
# gzip Pueblo_R2.fastq
# gzip Seneca_R1.fastq
# gzip Seneca_R2.fastq
# gzip Zuni_R1.fastq
# gzip Zuni_R2.fastq
# gzip annKS2W-35_R1.fastq
# gzip annKS2W-35_R2.fastq
# gzip annMB1W-40_R1.fastq
# gzip annMB1W-40_R2.fastq
# gzip annMO1W-39_R1.fastq
# gzip annMO1W-39_R2.fastq
# gzip annND1W-6_R1.fastq
# gzip annND1W-6_R2.fastq
# gzip annSK1W-Q_R1.fastq
# gzip annSK1W-Q_R2.fastq
# gzip PPN262_R1.fastq
gzip PPN262_R2.fastq
gzip SF33_R1.fastq
gzip SF33_R2.fastq
