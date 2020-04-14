#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant
#SBATCH -J paleo
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_test.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_test.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12

paleomix bam_pipeline example