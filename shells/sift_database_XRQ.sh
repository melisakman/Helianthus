#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/sift/Heli/
#SBATCH -J sift
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/sift/outs/sift_database_XRQ.out
#SBATCH -e /global/home/users/makman/sift/outs/sift_database_XRQ.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load perl
srun perl /clusterfs/vector/scratch/makman/sift/scripts_to_build_SIFT_db/make-SIFT-db-all.pl -config ./Helianthus_config.txt
