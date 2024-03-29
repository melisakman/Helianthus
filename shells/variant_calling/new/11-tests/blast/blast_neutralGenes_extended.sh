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
#SBATCH -o /global/home/users/makman/vcftools/outs/neutral_blast_extended.out
#SBATCH -e /global/home/users/makman/vcftools/outs/neutral_blast_extended.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load blast
# srun blastx -query /global/scratch/makman/GATK/final/neutral/100gene_CDs.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out neutral_genes2AT.txt

# srun blastx -query /global/scratch/makman/GATK/final/neutral/all4plus_genes_CDs.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out all4plus_neutralgenes_2AT.txt

# srun blastx -query /global/scratch/makman/GATK/final/neutral/6plus_neutral_extended.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out 6plus_neutral_extended_2AT.txt

# srun blastx -query /global/scratch/makman/GATK/final/neutral/5plus_neutral_extended_CDs.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out 5plus_neutral_extended_CDs_2AT.txt

srun blastx -query /global/scratch/makman/GATK/final/neutral/5plus_neutral_extended_CDs_3.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out 5plus_neutral_extended_CDs_2AT_3.txt
