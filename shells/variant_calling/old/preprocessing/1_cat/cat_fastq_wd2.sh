#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/
#SBATCH -J catfastqwd
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=48000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_wd2.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_wd2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-5

# zcat HI.3393.002.Index_6.HT172_SK1W-Q_R1.fastq.gz HI.3441.007.Index_6.HT172_SK1W-Q_R1.fastq.gz > SK1W-Q_R1.fastq
# zcat HI.3393.002.Index_6.HT172_SK1W-Q_R2.fastq.gz HI.3441.007.Index_6.HT172_SK1W-Q_R2.fastq.gz > SK1W-Q_R2.fastq
# zcat HI.3393.005.Rieseberg_1.HT211_MO1W-39_R1.fastq.gz HI.3441.005.Custom_0364.HT211_MO1W-39_R1.fastq.gz > MO1W-39_R1.fastq
# zcat HI.3393.005.Rieseberg_1.HT211_MO1W-39_R2.fastq.gz HI.3441.005.Custom_0364.HT211_MO1W-39_R2.fastq.gz > MO1W-39_R2.fastq
# zcat HI.3564.003.Index_6.HT330_ND1W-6_R1.fastq.gz HI.3577.003.Index_6.HT330_ND1W-6_R1.fastq.gz > ND1W-6_R1.fastq
zcat HI.3564.003.Index_6.HT330_ND1W-6_R2.fastq.gz HI.3577.003.Index_6.HT330_ND1W-6_R2.fastq.gz > ND1W-6_R2.fastq
zcat HI.3564.005.Index_25.QPG4_KS2W-35_R1.fastq.gz HI.3577.005.Index_25.QPG4_KS2W-35_R1.fastq.gz > KS2W-35_R1.fastq
zcat HI.3564.005.Index_25.QPG4_KS2W-35_R2.fastq.gz HI.3577.005.Index_25.QPG4_KS2W-35_R2.fastq.gz > KS2W-35_R2.fastq
zcat HI.3564.008.Index_7.Q086_MB1W-40_R1.fastq.gz HI.3579.001.Index_7.Q086_MB1W-40_R1.fastq.gz > MB1W-40_R1.fastq
zcat HI.3564.008.Index_7.Q086_MB1W-40_R2.fastq.gz HI.3579.001.Index_7.Q086_MB1W-40_R2.fastq.gz > MB1W-40_R2.fastq






