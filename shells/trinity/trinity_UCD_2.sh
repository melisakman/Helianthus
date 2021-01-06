#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/two/
#SBATCH -J Trinity
#SBATCH --partition=bigmemh
#SBATCH --mem=128000
#SBATCH -o /home/makman/Helianthus/outs/trinity2.out
#SBATCH -e /home/makman/Helianthus/outs/trinity2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --ntasks=64
module load perlnew/5.18.4
module load gmap/2015-06-23
module load rsem/1.2.23
module load trinity/2.1.1
Trinity --seqType fq --max_memory 128G --left ../Ari_2_RS_1.fq --right ../Ari_2_RS_2.fq --CPU 64 --normalize_reads --output trinity_Ari2_RS --full_cleanup
