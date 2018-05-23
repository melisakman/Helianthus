#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J APchr12
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_invariant_chr12_Anzac_b.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_invariant_chr12_Anzac_b.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635
TMPDIR=/clusterfs/rosalind/users/makman/temp

freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa --report-monomorphic -r HanXRQChr12:141915575- \
Anzac_Pueblo_sorted_markdup_recal_RG.bam > ../freebayes/freebayes_invariant_chr12_AnzacPueblo_b.vcf