#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/Helianthus/RSEM/two
#SBATCH -J abundance_estimation
#SBATCH -o /home/makman/Helianthus/outs/abun2_stdout.txt
#SBATCH -e /home/makman/Helianthus/outs/abun2_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemh
#SBATCH --ntasks=64
#SBATCH --mem=50000

module load perlnew/5.18.2
module load perl/5.18.4 
module load gmap/2015-06-23
module load R/3.1.2
module load rsem/1.2.23
module load trinity/2.1.1
module load bowtie2/2.2.5

/share/apps/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts /home/makman/Helianthus/two/trinity_Ari2_RS.Trinity.fasta --seqType fq --left /home/makman/Helianthus/Ari_2_RS_1.fq --right /home/makman/Helianthus/Ari_2_RS_2.fq --est_method RSEM --aln_method bowtie2 --debug --output_dir /home/makman/RSEM/two/ --trinity_mode --prep_reference


