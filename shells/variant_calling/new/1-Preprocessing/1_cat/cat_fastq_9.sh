#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J catfastq9
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=36000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq9.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

zcat HI.0440.004.Index_20.PPN083_Pool_R1.fastq.gz HI.0457.008.Index_20.PPN083_Pool_R1.fastq.gz > Hopi_dye_R1.fastq.gz
zcat HI.0440.004.Index_20.PPN083_Pool_R2.fastq.gz HI.0457.008.Index_20.PPN083_Pool_R2.fastq.gz > Hopi_dye_R2.fastq.gz
cp HI.0365.001.Index_2.PPN046_R1.fastq.gz > ready/Mandan1_R1.fastq.gz
cp HI.0365.001.Index_2.PPN046_R1.fastq.gz > ready/Mandan1_R2.fastq.gz
cp HI.0206.004.Index_8.Hopi_R1.fastq.gz > Hopi_mapping_parent_R1.fastq.gz
cp HI.0206.004.Index_8.Hopi_R2.fastq.gz > Hopi_mapping_parent_R2.fastq.gz
cp HI.0206.004.Index_8.Hopi_R1.fastq.gz > Hopi_other_R1.fastq.gz
cp HI.0206.004.Index_8.Hopi_R2.fastq.gz > Hopi_other_R2.fastq.gz
