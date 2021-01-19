#!/bin/bash
#
#SBATCH --job-name=PCAngsd_Alred_Merged
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/8_PCAngsd/
#SBATCH --time=72:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/8_PCAngsd_Alred_Merged.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/8_PCAngsd_Alred_Merged.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

## Using raw angsd file without LD correction

Project_name="Merged_Alred_angsd"
Beagle_file_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"

mkdir ${Project_name}
cd ${Project_name}

cp ${Beagle_file_path}/${Project_name}.beagle.gz ${Project_name}.beagle.gz 

module load python/3.6

python /global/home/users/nwales/programs/pcangsd/pcangsd.py -beagle ${Project_name}.beagle.gz -admix -inbreed 1 -o PCAngsd_${Project_name} -threads $SLURM_CPUS_PER_TASK

