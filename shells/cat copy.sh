#!/bin/bash -l
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/
#SBATCH -J cat
#SBATCH -o /global/home/users/makman/trinity/outs/cat.out
#SBATCH -e /global/home/users/makman/trinity/outs/cat.err
#SBATCH --qos=vector_batch
#SBATCH --partition=vector
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --time=48:00:00
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
srun cat *_1.fq.gz > /global/scratch/makman/data/AriNB10M_all_1.fq.gz
srun cat *_2.fq.gz > /global/scratch/makman/data/AriNB10M_all_2.fq.gz
