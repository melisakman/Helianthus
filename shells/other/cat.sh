#!/bin/bash -l
#SBATCH -D /home/makman/Helianthus/
#SBATCH -J cat
#SBATCH -o /home/makman/Helianthus/cat.out
#SBATCH -e /home/makman/Helianthus/cat.err
#SBATCH --partition=bigmemh
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-4
cat Ari-*_1.fq.gz > Ari_all_1.fq.gz
cat Ari-*_2.fq.gz > Ari_all_2.fq.gz
cat NB-*_1.fq.gz > NB_all_1.fq.gz
cat NB-*_2.fq.gz > NB_all_2.fq.gz