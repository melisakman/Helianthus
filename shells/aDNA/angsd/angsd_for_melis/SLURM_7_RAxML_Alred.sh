#!/bin/bash
#
#SBATCH --job-name=RAxML_Alred_Merged
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/7_RAxML/
#SBATCH --time=30:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/7_RAxML_Alred_Merged.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/7_RAxML_Alred_Merged.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

Project_name="Merged_Alred_angsd"
LD_corrected_fasta_file_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/5_ngsLD/Merged_Alred_angsd/"

mkdir ${Project_name}
cd ${Project_name}

cp ${LD_corrected_fasta_file_path}/${Project_name}.fasta .

module load raxml/8.2.11/

raxmlHPC -f a -x 12345 -p 12345 -N 100 -m GTRGAMMA -s ${Project_name}.fasta -n ${Project_name} -T $SLURM_CPUS_PER_TASK

