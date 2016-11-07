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
#SBATCH -o /global/home/users/makman/blast/outs/combinedGenes_2XRQ.out
#SBATCH -e /global/home/users/makman/blast/outs/combinedGenes_2XRQ.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
module load blast/2.2.30
srun blastn -query combined_genes.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/combinedGenes2XRQ.txt
srun blastn -query combined_genes.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/XRQ_mRNA -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/combinedGenes2XRQmRNA.txt
