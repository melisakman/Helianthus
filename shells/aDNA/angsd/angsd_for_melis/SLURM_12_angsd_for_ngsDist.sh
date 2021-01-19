#!/bin/bash
#
#SBATCH --job-name=Angsd_Alred_for_ngsDist
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --cpus-per-task=20
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/12_angsd_ngsDist.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/12_angsd_ngsDist.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037

bam_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
bam_file="Bam_list_Alred_ngsDist.txt"
output_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/12_ngsDist/"
output_extension="Angsd_ngsDist_Alred"


### Parameter choices:
# Doing only Alred individuals
# Testing all sites
# Transitions removed
# GLF of 2 is for a beagle file. Used for ngsDist

angsd -bam  ${bam_directory}/${bam_file} -out ${output_directory}/${output_extension} -nThreads ${SLURM_CPUS_PER_TASK} \
-GL 1 -doGlf 2 -doMaf 1 \
-doMajorMinor 1 -minMapQ 30 -minQ 20 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -rmTrans 1 \
-doIBS 1 -doCov 1 

