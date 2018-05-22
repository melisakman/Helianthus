#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J APchr11
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --time=72:00:00
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_invariant_chr11_Anzac.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_invariant_chr11_Anzac.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635
TMPDIR=/clusterfs/rosalind/users/makman/temp

freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa --report-monomorphic -r HanXRQChr11 \
Anzac_Pueblo_sorted_markdup_recal_RG.bam > ../freebayes/freebayes_invariant_chr11_AnzacPueblo.vcf