#!/bin/bash
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/count_reads_together.out
#SBATCH -e /global/home/users/makman/trinity/outs/count_reads_together.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --job-name=count
srun zcat * | echo $((`wc -l`/4))
