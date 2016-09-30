#!/bin/bash
#SBATCH -D /clusterfs/vector/scratch/makman/
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/countcombined_reads.out
#SBATCH -e /global/home/users/makman/trinity/outs/countcombined_reads.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
#SBATCH --job-name=count
srun zcat AriNB10M_all_1.fq.gz | echo $((`wc -l`/4))
srun zcat AriNB10M_all_2.fq.gz | echo $((`wc -l`/4))
