#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/blast
#SBATCH -J blast
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=10:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/neutral_5_blast.out
#SBATCH -e /global/home/users/makman/vcftools/outs/neutral_5_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load blast

# srun blastn -query /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/blast/5genes_neutral_forbaitdesign_CDs.txt -db /global/scratch/makman/blast_database/XRQv2 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out 5genes_neutral_forbaitdesign_2XRQv2.txt

# srun blastn -query /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/blast/5genes_neutral_forbaitdesign_CDs_2.txt -db /global/scratch/makman/blast_database/XRQv2 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out 5genes_neutral_forbaitdesign_2XRQv2_2.txt

srun blastn -query /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/blast/5genes_neutral_forbaitdesign_CDs_chr4.txt -db /global/scratch/makman/blast_database/XRQv2 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out 5genes_neutral_forbaitdesign_2XRQv2_chr4.txt
