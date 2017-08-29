#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/sift/scripts_to_build_SIFT_db/
#SBATCH -J sift
#SBATCH --partition=bigmemh
#SBATCH --mem=20000
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=48
#SBATCH -o /home/makman/Helianthus/outs/sift.out
#SBATCH -e /home/makman/Helianthus/outs/sift.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --time=8:00:00
#SBATCH --mail-type=All
module load perlnew/5.18.4
module load gcc/4.9.3
perl ./make-SIFT-db-all.pl -config ./test_files/homo_sapiens-test.txt