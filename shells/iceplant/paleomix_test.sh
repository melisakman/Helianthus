#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant
#SBATCH -J paleo
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_test.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_test.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12

paleomix bam_pipeline example