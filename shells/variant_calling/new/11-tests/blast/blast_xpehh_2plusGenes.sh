#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/blast
#SBATCH -J blast
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=8
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/xpehh_blast.out
#SBATCH -e /global/home/users/makman/vcftools/outs/xpehh_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load blast
srun blastx -query /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/blast/xpehh_2plus_genes_CDs_seqs -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out xpehh_genes2AT.txt
