#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/blast/outs/databases_Arabidopsis.out
#SBATCH -e /global/home/users/makman/blast/outs/databases_Arabidopsis.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
module load blast/2.2.30 
srun makeblastdb -in TAIR10_pep_20101214.fasta -input_type fasta -dbtype prot -title TAIR10_pep_20101214 -out TAIR10_pep_20101214
