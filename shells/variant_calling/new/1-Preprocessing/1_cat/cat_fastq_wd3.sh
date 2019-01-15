#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/
#SBATCH -J catfastqwd
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=48000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_wd3.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_wd3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-5


cp HI.1565.008.BioO_5.ann06-seWY_R1.fastq.gz ready/ann06-seWY_R1.fastq.gz
cp HI.1565.008.BioO_5.ann06-seWY_R2.fastq.gz ready/ann06-seWY_R2.fastq.gz
cp HI.1565.008.BioO_6.ann08-ceTN_R1.fastq.gz ready/ann08-ceTN_R1.fastq.gz 
cp HI.1565.008.BioO_6.ann08-ceTN_R2.fastq.gz ready/ann08-ceTN_R2.fastq.gz 
cp HI.1565.008.BioO_21.ann34-cwKS_R1.fastq.gz ready/ann34-cwKS_R1.fastq.gz
cp HI.1565.008.BioO_21.ann34-cwKS_R2.fastq.gz ready/ann34-cwKS_R2.fastq.gz
cp HI.1565.008.BioO_24.ann39-ncNE_R1.fastq.gz ready/ann39-ncNE_R1.fastq.gz
cp HI.1565.008.BioO_24.ann39-ncNE_R2.fastq.gz ready/ann39-ncNE_R2.fastq.gz





