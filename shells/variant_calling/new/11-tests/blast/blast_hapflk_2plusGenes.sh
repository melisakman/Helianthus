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
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/hapflk_blast.out
#SBATCH -e /global/home/users/makman/vcftools/outs/hapflk_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load blast
srun blastx -query /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/blast/hapflk_2plusGenes.txt -db /global/scratch/makman/GATK/final/blast/TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out hapflk_genes2AT.txt
