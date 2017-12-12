#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/
#SBATCH -J fqdump2
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=36:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqdump2.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqdump2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
module load sra-tools/2.8.1 
fastq-dump -I --split-files SRR5140347
fastq-dump -I --split-files SRR5140383
# fastq-dump -I --split-files SRR5140387
# fastq-dump -I --split-files SRR5140386
# fastq-dump -I --split-files SRR5140348
# fastq-dump -I --split-files SRR5140327
# fastq-dump -I --split-files SRR5140350
# fastq-dump -I --split-files SRR5140371
# fastq-dump -I --split-files SRR5140364
# fastq-dump -I --split-files SRR5140372
# fastq-dump -I --split-files SRR5140355
# fastq-dump -I --split-files SRR5140357
# fastq-dump -I --split-files SRR5140377
# fastq-dump -I --split-files SRR5140391
