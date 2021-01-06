#!/bin/bash
#SBATCH -D /global/home/users/makman/blast/
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/blast/outs/marker_primers_blast_ESTs_HA412.out
#SBATCH -e /global/home/users/makman/blast/outs/marker_primers_blast_ESTs_HA412.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load blast/2.2.30
srun blastn -query /global/home/users/makman/blast/ESTs_assembly.fasta -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/HA412 -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/ESTs2HA412.txt
