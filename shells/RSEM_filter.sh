#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/
#SBATCH -J filter
#SBATCH -o /home/makman/Helianthus/outs/RSEMfilter_stdout.txt
#SBATCH -e /home/makman/Helianthus/outs/RSEMfilter_stderr.txt
#SBATCH --mail-type=ALL
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemh
#SBATCH --ntasks=16
#SBATCH --array=1-4

module load perlnew/5.18.2
module load perl/5.18.4 
module load gmap/2015-06-23
module load R/3.1.2
module load rsem/1.2.23
module load trinity/2.1.1

/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/one/RSEM.isoforms.results --fasta=/home/makman/Helianthus/one/trinity_Ari2_NLM.Trinity.fasta --output=/home/makman/Helianthus/filtered/one/trinity_Ari2_NLM_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/one/trinity_Ari2_NLM_filtered_out.fasta --fpkm_cutoff=100.00 --isopct_cutoff=20.00
/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/two/RSEM.isoforms.results --fasta=/home/makman/Helianthus/two/trinity_Ari2_RS.Trinity.fasta --output=/home/makman/Helianthus/filtered/two/trinity_Ari2_RS_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/two/trinity_Ari2_RS_filtered_out.fasta --fpkm_cutoff=100.00 --isopct_cutoff=20.00
/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/three/RSEM.isoforms.results --fasta=/home/makman/Helianthus/three/trinity_NB3_NLM.Trinity.fasta --output=/home/makman/Helianthus/filtered/three/trinity_NB3_NLM_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/three/trinity_NB3_NLM_filtered_out.fasta --fpkm_cutoff=100.00 --isopct_cutoff=20.00
/share/apps/trinityrnaseq-2.1.1/util/filter_fasta_by_rsem_values.pl --rsem_output=/home/makman/Helianthus/RSEM/four/RSEM.isoforms.results --fasta=/home/makman/Helianthus/four/trinity_NB2_RS.Trinity.fasta --output=/home/makman/Helianthus/filtered/four/trinity_NB2_RS_filtered.fasta --filtered_output=/home/makman/Helianthus/filtered/four/trinity_NB2_RS_filtered_out.fasta --fpkm_cutoff=100.00 --isopct_cutoff=20.00

