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
#SBATCH -o /global/home/users/makman/blast/outs/finalmarkers2ESTsXRQ_blast.out
#SBATCH -e /global/home/users/makman/blast/outs/finalmarkers2ESTsXRQ_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-3

module load blast/2.2.30
blastn -task "blastn-short" -query ./final/ORS_HT_ZVG_CRT_F_R_markers.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/ESTs_assembly -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/final/primer_markers_2ESTs.txt
blastn -task "blastn-short" -query ./final/ORS_HT_ZVG_CRT_F_R_markers.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/final/primer_markers_2XRQ.txt
blastx -query ./final/NSA_SFW_markers.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/final/long_markers_2XRQ.txt
