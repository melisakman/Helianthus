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
#SBATCH -o /global/home/users/makman/blast/outs/marker_primers_blast.out
#SBATCH -e /global/home/users/makman/blast/outs/marker_primers_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-4
module load blast/2.2.30
srun blastn -task "blastn-short" -query marker_primers.fa -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/HA412_mRNA -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/markerPrimers2HA412mRNA.txt
srun blastn -task "blastn-short" -query marker_primers.fa -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/HA412 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/markerPrimers2HA412.txt
srun blastn -task "blastn-short" -query marker_primers.fa -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ_mRNA -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/markerPrimers2XRQmRNA.txt
srun blastn -task "blastn-short" -query marker_primers.fa -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/markerPrimers2XRQ.txt
