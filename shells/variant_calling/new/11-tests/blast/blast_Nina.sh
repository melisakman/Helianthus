#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/blast
#SBATCH -J blast
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=10:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/Nina_blast.out
#SBATCH -e /global/home/users/makman/vcftools/outs/Nina_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load blast

srun blastx -query /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/blast/genes_Nina.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out Nina_Genes_CDs_2AT.txt
