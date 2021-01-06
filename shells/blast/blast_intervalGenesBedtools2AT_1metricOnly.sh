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
#SBATCH -o /global/home/users/makman/blast/outs/intervalGenes_blast_AT_bedtools_1metricOnly.out
#SBATCH -e /global/home/users/makman/blast/outs/intervalGenes_blast_AT_bedtools_1metricOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-3

module load blast/2.2.30
srun blastx -query /global/home/users/makman/blast/bedtoolsOverlaps/gene_seq_within_intervals_CDs_Fst.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/bedtoolsOverlaps/intervalGenes2AT_Fstonly.txt
srun blastx -query /global/home/users/makman/blast/bedtoolsOverlaps/gene_seq_within_intervals_CDs_TajD.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/bedtoolsOverlaps/intervalGenes2AT_TajDonly.txt
srun blastx -query /global/home/users/makman/blast/bedtoolsOverlaps/gene_seq_within_intervals_CDs_xpclr.txt -db /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/bedtoolsOverlaps/intervalGenes2AT_xpclronly.txt
