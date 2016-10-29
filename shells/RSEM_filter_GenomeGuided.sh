#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/
#SBATCH -J filter
#SBATCH -o /home/makman/Helianthus/outs/RSEMfilterGenomeguided_stdout.txt
#SBATCH -e /home/makman/Helianthus/outs/RSEMfilterGenomeguided_stderr.txt
#SBATCH --mail-type=ALL
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p serial
#SBATCH --ntasks=16
#SBATCH --time=1:00:00

module load perlnew/5.18.2
module load perl/5.18.4 
module load gmap/2015-06-23
module load R/3.1.2
module load rsem/1.2.23
module load trinity/2.1.1

/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/RSEM.isoforms.results --fasta=/home/makman/Helianthus/trinity_AriNB_genomeGuided/Trinity-GG.fasta --output=/home/makman/Helianthus/filtered/trinity_AriNB_GenGuided_Trinity_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/trinity_AriNB_GenGuided_Trinity_filteredout.fasta --tpm_cutoff=0.04 --isopct_cutoff=10.00

