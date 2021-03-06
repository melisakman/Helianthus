#!/bin/bash
#SBATCH -D /global/scratch/makman/trinity/
#SBATCH -J Trinity
#SBATCH --account=co_rosalind
#SBATCH --partition=savio_bigmem
#SBATCH --qos=savio_lowprio
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=512000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/trinityAriNBcombinedsavio.out
#SBATCH -e /global/home/users/makman/trinity/outs/trinityAriNBcombinedsavio.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load samtools
module load trinity
module load bowtie/1.1.1
Trinity --seqType fq --max_memory 512G --SS_lib_type RF --left /global/scratch/makman/AriNB10M_all_1.fq --right /global/scratch/makman/AriNB10M_all_2.fq --CPU 50 --normalize_reads --output trinity_AriNB_combined --full_cleanup
