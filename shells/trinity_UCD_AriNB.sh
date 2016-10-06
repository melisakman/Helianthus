#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/AriNBcombined/
#SBATCH -J Trinity
#SBATCH --partition=bigmemh
#SBATCH --mem=390000
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=48
#SBATCH -o /home/makman/Helianthus/outs/trinityAriNBcombined.out
#SBATCH -e /home/makman/Helianthus/outs/trinityAriNBcombined.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load perlnew/5.18.4
module load gmap/2015-06-23
module load rsem/1.2.23
module load trinity/2.1.1
Trinity --seqType fq --max_memory 390G --left ../AriNB10M_all_1.fq.gz --right ../AriNB10M_all_2.fq.gz --CPU 39 --normalize_reads --output trinity_AriNB_combined --full_cleanup
