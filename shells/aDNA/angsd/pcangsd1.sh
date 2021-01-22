#!/bin/bash 
#SBATCH -D /global/scratch/makman/Sunflower_angsd/
#SBATCH -J angsd1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/pcangsd_1.out
#SBATCH -e /global/home/users/makman/paloemix_outs/pcangsd_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All



module load python/3.6
# module load numpy
python /global/home/users/makman/pcangsd/pcangsd.py -beagle angsd.beagle.gz -admix -inbreed 1 -o PCAngsd_allSamples -threads $SLURM_CPUS_PER_TASK

