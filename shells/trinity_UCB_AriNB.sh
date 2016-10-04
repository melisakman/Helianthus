#!/bin/bash
#SBATCH -D /global/scratch/makman
#SBATCH -J Trinity
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --max_nodes=4000
#SBATCH --cmds_per_node=20
#SBATCH --cpus-per-task=4
#SBATCH --mem=128000
#SBATCH --time=140:00:00
#SBATCH -o ~/trinity/outs/trinityAriNBcombined.out
#SBATCH -e ~/trinity/outs/trinityAriNBcombined.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export MODULEPATH=$MODULEPATH:~/modules

module load trinity/2.2.0
module load bowtie/1.1.1
Trinity --seqType fq --max_memory 128G --left ./AriNB10M_all_1.fq.gz --right ./AriNB10M_all_2.fq.gz --CPU 20 --normalize_reads --output trinity_AriNB_combined --full_cleanup
