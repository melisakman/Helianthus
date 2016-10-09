#!/bin/bash
#SBATCH -D /global/scratch/makman/
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/countcombined_reads_unziped_savio.out
#SBATCH -e /global/home/users/makman/trinity/outs/countcombined_reads_unziped_savio.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
#SBATCH --job-name=count
srun wc -l AriNB10M_all_1.fq
srun wc -l AriNB10M_all_2.fq
