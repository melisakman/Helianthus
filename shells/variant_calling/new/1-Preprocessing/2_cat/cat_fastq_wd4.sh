#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw
#SBATCH -J catfastqwd
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_wd3.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_wd3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


cp HI.3392.003.Index_25.HT55_IA2W-17_R1.fastq.gz ready/IA2W-17_R1.fastq.gz
cp HI.3392.003.Index_25.HT55_IA2W-17_R2.fastq.gz ready/IA2W-17_R2.fastq.gz
cp HI.3563.008.Index_7.HT254_KS1W-27_R1.fastq.gz ready/KS1W-27_R1.fastq.gz
cp HI.3563.008.Index_7.HT254_KS1W-27_R2.fastq.gz ready/KS1W-27_R2.fastq.gz
cp HI.3570.007.Index_23.HT360_SD1W-35_R1.fastq.gz ready/SD1W-35_R1.fastq.gz
cp HI.3570.007.Index_23.HT360_SD1W-35_R2.fastq.gz ready/SD1W-35_R2.fastq.gz
cp HI.3570.008.Index_15.HT013_SD2W-18_R1.fastq.gz ready/SD2W-18_R1.fastq.gz
cp HI.3570.008.Index_15.HT013_SD2W-18_R2.fastq.gz ready/SD2W-18_R2.fastq.gz
cp HI.3577.006.Index_19.Q075_IA1W-1_R1.fastq.gz ready/IA1W-1_R1.fastq.gz
cp HI.3577.006.Index_19.Q075_IA1W-1_R2.fastq.gz ready/IA1W-1_R2.fastq.gz