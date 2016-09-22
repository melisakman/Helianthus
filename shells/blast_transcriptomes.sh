#!/bin/bash
#SBATCH -D /global/home/users/makman/blast/transcriptomes/
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/blast/outs/blast_transcriptomes.out
#SBATCH -e /global/home/users/makman/blast/outs/blast_transcriptomes.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-6
module load blast/2.2.30
srun blastn -query trinity_Ari_all_Trinity_TPM170_filtered.fasta -db /clusterfs/vector/instrumentData/blackmanlab/blast_databases/NB -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/Ari2NB.txt
srun blastn -query trinity_Ari_all_Trinity_TPM170_filtered.fasta -db /clusterfs/vector/instrumentData/blackmanlab/blast_databases/XRQ -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/Ari2XRQ.txt
srun blastn -query trinity_NB_all_Trinity_TPM140_filtered.fasta -db /clusterfs/vector/instrumentData/blackmanlab/blast_databases/XRQ -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/NB2XRQ.txt
srun blastn -query trinity_NB_all_Trinity_TPM140_filtered.fasta -db /clusterfs/vector/instrumentData/blackmanlab/blast_databases/stringtie -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/NB2stringtie.txt
srun blastn -query trinity_Ari_all_Trinity_TPM170_filtered.fasta -db /clusterfs/vector/instrumentData/blackmanlab/blast_databases/stringtie -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/Ari2stringtie.txt
srun blastn -query stringtie_merged_annot.fa -db /clusterfs/vector/instrumentData/blackmanlab/blast_databases/XRQ -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out /global/home/users/makman/blast/stringtie2XRQ.txt
