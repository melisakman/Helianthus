#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/three/
#SBATCH -J Trinity
#SBATCH --partition=bigmemh
#SBATCH --mem=128000
#SBATCH -o /home/makman/Helianthus/outs/trinity3.out
#SBATCH -e /home/makman/Helianthus/outs/trinity3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --ntasks=64
module load perlnew/5.18.4
module load gmap/2015-06-23
module load rsem/1.2.23
module load trinity/2.1.1
Trinity --seqType fq --max_memory 128G --left ../NB_3_NLM_1.fq --right ../NB_3_NLM_2.fq --CPU 64 --normalize_reads --output trinity_NB3_NLM --full_cleanup
