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
#SBATCH -o /global/home/users/makman/blast/outs/Hulkemarkers2ESTs_blast.out
#SBATCH -e /global/home/users/makman/blast/outs/Hulkemarkers2ESTs_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load blast/2.2.30
srun blastn -task "blastn-short" -query /clusterfs/vector/instrumentData/blackmanlab/Helianthus/Hulke/SSRetc.fa -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/ESTs_assembly -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/Hulke_SSRetc2ESTs.txt
