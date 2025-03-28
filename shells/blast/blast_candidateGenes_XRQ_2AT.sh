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
#SBATCH -o /global/home/users/makman/blast/outs/candidateGenes2XRQ2AT.out
#SBATCH -e /global/home/users/makman/blast/outs/candidateGenes2XRQ2AT.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load blast/2.2.30
blastx -query dom_candidates_CDs.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/candidateGenes_2XRQ_2AT.txt
