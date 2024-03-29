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
#SBATCH -o /global/home/users/makman/blast/outs/databases_EST.out
#SBATCH -e /global/home/users/makman/blast/outs/databases_EST.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
module load blast/2.2.30 
srun makeblastdb -in /global/home/users/makman/blast/ESTs_assembly.fasta -input_type fasta -dbtype nucl -title ESTs_assembly -out ESTs_assembly

