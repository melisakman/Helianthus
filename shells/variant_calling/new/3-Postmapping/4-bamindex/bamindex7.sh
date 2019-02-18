#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J markdup6
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=18:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bamindex7.out
#SBATCH -e /global/home/users/makman/GATK/outs/bamindex7.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load samtools/1.8

samtools index ann1238_lane2_62_5M_markdup_readGroup.bam ann1238_lane2_62_5M_markdup_readGroup.bai
