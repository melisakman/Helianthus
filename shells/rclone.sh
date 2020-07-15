#!/bin/bash 
#SBATCH -D /global/scratch/makman/
#SBATCH -J rclone
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=8
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/rclone.out
#SBATCH -e /global/home/users/makman/vcftools/outs/rclone.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load rclone

rclone dedupe --dedupe-mode rename remote: -v 