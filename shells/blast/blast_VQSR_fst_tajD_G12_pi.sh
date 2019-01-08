#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final
#SBATCH -J blast
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/blast/outs/VQSR_fst_tajD_pi_G12all_genes2AT.out
#SBATCH -e /global/home/users/makman/blast/outs/VQSR_fst_tajD_pi_G12all_genes2AT.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/blast/2.6.0
blastx -query fst_G12_tajD_pi_2+genes_Jan2019.txt -db ../../../TAIR10_pep_20101214 -outfmt "7 qseqid qlen sseqid slen qstart qend sstart send evalue bitscore score length pident nident mismatch positive gapopen gaps" -out fst_G12_tajD_pi_2+genes_Jan2019_Genes2AT.txt
