#!/bin/bash
#SBATCH -D /global/home/users/makman/GATK/final/blast/
#SBATCH -J blast
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/blast/outs/intervalGenes_blast_AT_bedtools_1metricOnly.out
#SBATCH -e /global/home/users/makman/blast/outs/intervalGenes_blast_AT_bedtools_1metricOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-3

module load blast
srun blastx -query /global/scratch/makman/GATK/final/fst_pi_tajD_G12_lassi_CLR/geneSequences_wRepeats.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out fst_pi_tajD_G12_lassi_CLR_genes2AT.txt
