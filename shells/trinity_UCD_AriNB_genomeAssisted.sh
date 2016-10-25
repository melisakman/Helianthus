#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/
#SBATCH -J Trinity
#SBATCH --partition=bigmemh
#SBATCH --mem=390000
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH -o /home/makman/Helianthus/outs/trinityAriNBgenomeGuided.out
#SBATCH -e /home/makman/Helianthus/outs/trinityAriNBgenomeGuided.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --time=168:00:00
#SBATCH --mail-type=All
module load perlnew/5.18.4
module load gmap/2015-06-23
module load rsem/1.2.23
module load trinity/2.0.6
Trinity --max_memory 390G --SS_lib_type RF --genome_guided_bam ./hisat/AriNBcombined.bam --genome_guided_max_intron 10000 --CPU 24 --output trinity_AriNB_genomeGuided --full_cleanup
