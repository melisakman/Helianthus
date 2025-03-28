#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/
#SBATCH -J fastqdump
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=36000
#SBATCH --qos=savio_normal
#SBATCH --time=36:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqdump.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqdump.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-4
module load sra-tools/2.8.1 
fastq-dump -I --split-files SRR5912191
fastq-dump -I --split-files SRR5912193
fastq-dump -I --split-files SRR5912198
fastq-dump -I --split-files SRR5912262


