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


module purge
module load python/3.6
export PATH=/global/home/users/makman/pcangsd/:$PATH
python /global/home/users/makman/pcangsd/pcangsd.py -beagle all_angsd.beagle.gz -admix -o PCAngsd_all -threads $SLURM_CPUS_PER_TASK
python /global/home/users/makman/pcangsd/pcangsd.py -beagle dom_angsd.beagle.gz -admix -o PCAngsd_dom -threads $SLURM_CPUS_PER_TASK
python /global/home/users/makman/pcangsd/pcangsd.py -beagle neut_angsd.beagle.gz -admix -o PCAngsd_neut -threads $SLURM_CPUS_PER_TASK
