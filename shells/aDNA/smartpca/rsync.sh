#!/bin/bash 
#SBATCH -D /global/scratch/users/makman/
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/rsync.out
#SBATCH -e /global/home/users/makman/paloemix_outs/rsync.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

ssh dtn

rsync -axHP /global/scratch-old/makman/ /global/scratch/users/makman/