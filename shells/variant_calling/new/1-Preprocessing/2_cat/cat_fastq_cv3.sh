#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra
#SBATCH -J catfastqcv
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_cv3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip SRR5912191_1.fastq
gzip SRR5912193_1.fastq
gzip SRR5912198_1.fastq
# gzip SRR5912262_1.fastq
# gzip SRR5912197_1.fastq
# gzip SRR5912257_1.fastq

gzip SRR5912191_2.fastq
gzip SRR5912193_2.fastq
gzip SRR5912198_2.fastq
# gzip SRR5912262_2.fastq
# gzip SRR5912197_2.fastq
# gzip SRR5912257_2.fastq

cp SRR5912191_1.fastq.gz ../raw/ready/tek/PPN255_Manchurian_R1.fastq.gz
cp SRR5912193_1.fastq.gz ../raw/ready/tek/HA821_R1.fastq.gz
cp SRR5912198_1.fastq.gz ../raw/ready/tek/RHA311_R1.fastq.gz
# cp SRR5912262_1.fastq.gz ../raw/ready/tek/RHA358_R1.fastq.gz
# cp SRR5912197_1.fastq.gz ../raw/ready/tek/PPN262_R1.fastq.gz
# cp SRR5912257_1.fastq.gz ../raw/ready/tek/SF33_R1.fastq.gz

cp SRR5912191_2.fastq.gz ../raw/ready/tek/PPN255_Manchurian_R2.fastq.gz
cp SRR5912193_2.fastq.gz ../raw/ready/tek/HA821_R2.fastq.gz
cp SRR5912198_2.fastq.gz ../raw/ready/tek/RHA311_R2.fastq.gz
# cp SRR5912262_2.fastq.gz ../raw/ready/tek/RHA358_R2.fastq.gz
# cp SRR5912197_2.fastq.gz ../raw/ready/tek/PPN262_R2.fastq.gz
# cp SRR5912257_2.fastq.gz ../raw/ready/tek/SF33_R2.fastq.gz
