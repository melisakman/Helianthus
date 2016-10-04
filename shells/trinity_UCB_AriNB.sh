#!/bin/bash
#SBATCH -D /global/home/users/makman/
#SBATCH -J Trinity
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --cpus-per-task=4
#SBATCH --mem=128000
#SBATCH --time=140:00:00
#SBATCH -o /global/home/users/makman//trinity/outs/trinityAriNBcombined.out
#SBATCH -e /global/home/users/makman//trinity/outs/trinityAriNBcombined.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export MODULEPATH=$MODULEPATH:/global/home/users/makman/modules

module load trinity/2.2.0
module load bowtie/1.1.1
Trinity --seqType fq --max_memory 128G --left /global/scratch/makman/AriNB10M_all_1.fq.gz --right /global/scratch/makman/AriNB10M_all_2.fq.gz --CPU 20 --normalize_reads --output trinity_AriNB_combined --full_cleanup
