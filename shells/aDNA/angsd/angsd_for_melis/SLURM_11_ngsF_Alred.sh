#!/bin/bash
#
#SBATCH --job-name=Angsd_Alred_ngsF
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/11_ngsF/
#SBATCH --time=72:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/11_ngsF_Alred.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/11_ngsF_Alred.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

module load  gcc/6.3.0
module load  zlib/1.2.11
module load  gsl/2.0

Project_name="Alred_ngsRelate_angsd"
bam_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
bam_file="Bam_list_Alred_for_ngsRelate.txt"
angsd_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"
output_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/11_ngsF/"

mkdir ${Project_name}
cd ${Project_name}
cp ${angsd_directory}/${Project_name}.glf.gz . 
gunzip ${Project_name}.glf.gz

number_of_samples=`wc -l < ${bam_directory}/${bam_file}`
number_of_sites=`zcat ${angsd_directory}/${Project_name}.glf.pos.gz | wc -l`

/global/home/users/nwales/programs/ngsF/ngsF --init_values r --min_epsilon 1e-9 \
--calc_LRT --n_ind ${number_of_samples} --n_sites ${number_of_sites} --glf ${Project_name}.glf \
--out ${Project_name}.ngsF --n_threads ${SLURM_CPUS_PER_TASK}

cd ..


