#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/
#SBATCH -J filter
#SBATCH -o /home/makman/Helianthus/outs/RSEMfilter4_stdout.txt
#SBATCH -e /home/makman/Helianthus/outs/RSEMfilter4_stderr.txt
#SBATCH --mail-type=ALL
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p serial
#SBATCH --ntasks=16
#SBATCH --array=1-4

module load perlnew/5.18.2
module load perl/5.18.4 
module load gmap/2015-06-23
module load R/3.1.2
module load rsem/1.2.23
module load trinity/2.1.1

/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/five/RSEM.isoforms.results --fasta=/home/makman/Helianthus/five/trinity_NB_all.Trinity.fasta --output=/home/makman/Helianthus/filtered/five/trinity_NB_all_F200_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/five/trinity_NB_all_F200_filtered_out.fasta --fpkm_cutoff=0.20 --isopct_cutoff=10.00
/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/six/RSEM.isoforms.results --fasta=/home/makman/Helianthus/six/trinity_Ari_all.Trinity.fasta --output=/home/makman/Helianthus/filtered/six/trinity_Ari_all_Trinity_F220_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/six/trinity_Ari_all_Trinity_F220_filtered_out.fasta --fpkm_cutoff=0.22 --isopct_cutoff=10.00
/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/five/RSEM.isoforms.results --fasta=/home/makman/Helianthus/five/trinity_NB_all.Trinity.fasta --output=/home/makman/Helianthus/filtered/five/trinity_NB_all_F200Iso1_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/five/trinity_NB_all_F200Iso1_filtered_out.fasta --fpkm_cutoff=0.20 --isopct_cutoff=1.00
/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/six/RSEM.isoforms.results --fasta=/home/makman/Helianthus/six/trinity_Ari_all.Trinity.fasta --output=/home/makman/Helianthus/filtered/six/trinity_Ari_all_Trinity_F220Iso1_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/six/trinity_Ari_all_Trinity_F220Iso1_filtered_out.fasta --fpkm_cutoff=0.22 --isopct_cutoff=1.00
