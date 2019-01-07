#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J APchr04b
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_invariant_chr04_Anzac_b.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_invariant_chr04_Anzac_b.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635
TMPDIR=/clusterfs/rosalind/users/makman/temp

freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa --report-monomorphic -r HanXRQChr04:142687843- \
Anzac_Pueblo_sorted_markdup_recal_RG.bam > ../freebayes/freebayes_invariant_chr04_AnzacPueblo_b.vcf