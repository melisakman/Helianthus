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
#SBATCH -o /global/home/users/makman/blast/outs/Hulkemarkers_blast.out
#SBATCH -e /global/home/users/makman/blast/outs/Hulkemarkers_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2

module load blast/2.2.30
srun blastn -query /clusterfs/vector/instrumentData/blackmanlab/Helianthus/Hulke/all_markers.fa -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/Hulke_allmarkers2XRQ.txt
srun blastn -task "blastn-short" -query /clusterfs/vector/instrumentData/blackmanlab/Helianthus/Hulke/SSReyc.fa -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/Hulke_SSRetc2XRQ.txt
