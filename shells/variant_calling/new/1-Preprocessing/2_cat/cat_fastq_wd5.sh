#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw
#SBATCH -J catfastqwd
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_wd5.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_wd5.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


mv annIA_1.fastq.gz ready/
mv annIA_2.fastq.gz ready/
mv annKS_1.fastq.gz ready/
mv annKS_2.fastq.gz ready/
mv annMAN_1.fastq.gz ready/
mv annMAN_2.fastq.gz ready/
mv annNM_1.fastq.gz ready/
mv annNM_2.fastq.gz ready/
mv annWY_1.fastq.gz ready/
mv annWY_2.fastq.gz ready/
