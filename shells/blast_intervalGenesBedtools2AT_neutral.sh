#!/bin/bash
#SBATCH -D /global/home/users/makman/blast/bedtoolsOverlaps
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/blast/outs/intervalGenes_blast_AT_neutral.out
#SBATCH -e /global/home/users/makman/blast/outs/intervalGenes_blast_AT_neutral.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array = 1-2
module load blast/2.2.30
srun blastx -query /global/home/users/makman/blast/bedtoolsOverlaps/CDs_neutral_3.fasta -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/bedtoolsOverlaps/intervalGenes2AT_neutral_3.txt
srun blastx -query /global/home/users/makman/blast/bedtoolsOverlaps/CDs_neutral_4.fasta -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/bedtoolsOverlaps/intervalGenes2AT_neutral_4.txt
