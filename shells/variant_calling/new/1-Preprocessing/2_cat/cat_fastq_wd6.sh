#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/ready/
#SBATCH -J catfastqwd
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_wd6.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_wd6.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


zcat Ann1238-2Hannuus10XLib_MPS12342762_C08_7484_S1_L004_R1_001.fastq.gz Ann1238-2Hannuus10XLib_MPS12342762_C08_7506_S1_L004_R1_001.fastq.gz > ann1238_R1.fastq

zcat Ann1238-2Hannuus10XLib_MPS12342762_C08_7484_S1_L004_R2_001.fastq.gz Ann1238-2Hannuus10XLib_MPS12342762_C08_7506_S1_L004_R2_001.fastq.gz > ann1238_R2.fastq

gzip ann1238_R1.fastq
gzip ann1238_R2.fastq