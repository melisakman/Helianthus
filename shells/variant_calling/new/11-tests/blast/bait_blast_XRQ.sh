#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/blast
#SBATCH -J blast
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=8
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/bait_blast.out
#SBATCH -e /global/home/users/makman/vcftools/outs/bait_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load blast


srun blastn -query /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/blast/Final_Combined_Baits.fas.clust-85-99_priority_baits_intron_3prime_removed -db /global/scratch/makman/blast_database/XRQv2 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out baits_to_XRQ.txt
