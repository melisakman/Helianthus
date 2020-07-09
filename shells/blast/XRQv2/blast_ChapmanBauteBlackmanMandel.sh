#!/bin/bash
#SBATCH -D /global/scratch/makman/blast_database/
#SBATCH -J blast
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/blast/outs/combinedGenes_2XRQv2.out
#SBATCH -e /global/home/users/makman/blast/outs/combinedGenes_2XRQv2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load blast

# srun makeblastdb -in ../HanXRQr2/HanXRQr2.0-SUNRISE-2.1.mrna.fasta -input_type fasta -dbtype nucl -title XRQv2_mRNA -out XRQv2_mRNA
# 
# srun makeblastdb -in ../HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -input_type fasta -dbtype nucl -title XRQv2 -out XRQv2


srun blastn -query /global/home/users/makman/blast/genes_combined.txt -db XRQv2 -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out ../blast/combinedGenes2XRQv2.txt
srun blastn -query /global/home/users/makman/blast/genes_combined.txt -db XRQv2_mRNA -word_size 11 -gapopen 5 -gapextend 2 -reward 2 -penalty -3 -template_type coding -template_length 18 -window_size 25 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out ../blast/combinedGenes2XRQv2mRNA.txt
