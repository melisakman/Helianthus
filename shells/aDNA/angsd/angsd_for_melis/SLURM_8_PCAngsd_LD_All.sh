#!/bin/bash
#
#SBATCH --job-name=PCAngsd_All_LD
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/8_PCAngsd/
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/8_PCAngsd_All.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/8_PCAngsd_All.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

## Using raw angsd file without LD correction

Project_name="Alred_all_sites"
LD_corrected_beagle_file_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/5_ngsLD/Alred_all_sites/"

mkdir ${Project_name}_LD
cd ${Project_name}_LD

cp ${LD_corrected_beagle_file_path}/${Project_name}_covered.beagle.gz  ${Project_name}_covered.beagle.gz

module load python/3.6

python /global/home/users/nwales/programs/pcangsd/pcangsd.py -beagle ${Project_name}_covered.beagle.gz -admix -inbreed 1 -o PCAngsd_${Project_name}_LD -threads $SLURM_CPUS_PER_TASK

rm ${Project_name}_covered.beagle.gz
